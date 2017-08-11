require(['component/iframeLayer', 'component/dataTable', 'common/util', 'common/http', 'common/busUtil', 'handlebars', 'jquery','jquery.serialize','laydate','common/validateRules', 'common/ajaxfileupload' ], function(layer, dataTable, util, http,busUtil,handlebars) {

	var entTable;
	init();
	
	function init() {
		//initDataTable();
		bind();
	}

	function initDataTable() {
		entTable = dataTable.load({
			// 需要初始化dataTable的dom元素
			el : '#tab_fr_high',
			showIndex : true,
			scrollX : true,
			aLengthMenu : [ 5, 10, 20, 50, 100 ],
			ajax : {
				url : '/data/frdetail/frHighDetail',
				data : function(d) {
					d.params = $("#form_fr_high").serializeObject();
				
				}
			},
			columns : [ {
				data : null,
				defaultContent : 1,
			}, {
				data : "cxzt"
			}, {
				data : "tyxydm"
			}, {
				data : "frmc"
			}, {
				data : "fddbr"
			}, {
				data : "djrq"
			}, {
				data : "zczb"
			} , {
				data : "qyLxdl"
			}, {
				data : "hydm"
			}, {
				data : "zcdz"
			}, {
				data : "datasrdep"
			}],
			columnDefs : [
					{ targets:2, render:function(data,type,row,meta){ 
						if(row.tyxydm != null && row.tyxydm !=""){
							return "<a href='javascript:void(0);' class='look' corpid='"+row.frwybs+"'>"+row.tyxydm+"</a>";
						}else{
							return "<a href='javascript:void(0);' class='look' corpid='"+row.frwybs+"'>"+row.djzch+"</a>";
						}
		            	
		            } 
	            }
			]
		})
		entTable.on('xhr.dt',function(e,settings,json,xhr){
    		if(json.recordsTotal <= 5){
    			$('#tab_fr_high_wrapper .bottom').hide();
			}else{
				$('#tab_fr_high_wrapper .bottom').show();
			}
        })
	}
	function bind() {
		util.bindEvents([ {
			el : '#entSearch',
			event : 'click',
			handler : function() {
				var startTime = $("#fk_startTime").val();
				var endTime = $("#fk_endTime").val();
				if(startTime !=""&& startTime != null && endTime !="" && endTime != null && startTime > endTime){
					layer.msg("日期有误，确认后请重新输入");
				}else{
					var tr = $("#tab_fr_high tbody tr:first").text();
					if(tr=="" || tr==null ){
						initDataTable();
					}else{
						entTable.ajax.reload();
					}
				}
			}
		},{
        	el:'#entCancle',
        	event:'click',
        	handler:function(){
        		$("#fr_name").val("");
    			$("#xy_code").val("");
    			$("regist_state").get(0);
    			$("fr_stye").get(0);
    			$("#source_dept").val("");
    			$("#fk_startTime").val("");
    			$("#fk_endTime").val("");
    			$("#fd_fr_name").val("");
    			$("#fk_trade").val("");
    			$("#zc_cast").val("");
        	}
        }, {
			el : '#entSelectDept',
			event : 'click',
			handler : function() {
				doSelectDept("entOrgCode","entOrgName");
			}
		},{
			el:'.look',
            event: 'click',
            handler: function () {        	
            	 var corpid =$(this).attr('corpid');
    			 if(corpid != null && corpid != ""){
    				 window.open("/data/frdetail/djjbxx/"+corpid,"_blank");
    			 }else{
    				 layer.msg("没有查到相关数据");
    			 }
            }
        }
	  ])
	}
	// 选择行业
	function doSelectDept(code,name) {
		var select_dept_url = window._CONFIG.select_trade_url;
		layer.dialog({
			title : '选择行业',
			area : [ '420px', '666px' ],
			content : select_dept_url,
			callback : function(data) {
				var orgName = data.arry;
				$("#"+name).val(orgName);
			}
		})
	}

});