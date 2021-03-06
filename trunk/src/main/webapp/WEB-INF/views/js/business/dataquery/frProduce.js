require(['component/iframeLayer', 'component/dataTable', 'common/util', 'common/http', 'handlebars', 'jquery','jquery.serialize','laydate','jquery.validate','pagination'], function (layer, dataTable, util, http,handlebars) {
	var params = $("#produce-form").serializeObject();
	var table_hxyp,table_ylqx,table_ysww,table_dlch,table_zscq,table_jtjs,table_zdcy,table_qytz,table_shfz,table_zytz,table_kjcg,table_csjz,table_ssxx,table_cjxm;

    init();
    /**
     * 初始化函数集合
     */
    function init() {
      var errormsg =  $("#errormsg").val();
      if(errormsg != null && errormsg != ""){
    	initSSFlex();
        layer.msg(errormsg);
      }else{
    	  _bind();
          init_product();
      }
    }
    
    function init_product(){
    	if((table_hxyp+'')=='undefined'){
    		initDataTable_hxyp();
    	}
    	if((table_ylqx+'')=='undefined'){
    		initDataTable_ylqx();
    	}
    	if((table_ysww+'')=='undefined'){
    		initDataTable_ysww();
    	}
    	if((table_dlch+'')=='undefined'){
    		initDataTable_dlch();
    	}
    	if((table_zscq+'')=='undefined'){
    		initDataTable_zscq();
    	}
    	if((table_jtjs+'')=='undefined'){
    		initDataTable_jtjs();
    	}
    	if((table_zdcy+'')=='undefined'){
    		initDataTable_zdcy();
    	}
    	if((table_qytz+'')=='undefined'){
    		initDataTable_qytz();
    	}
    	if((table_shfz+'')=='undefined'){
    		initDataTable_shfz();
    	}
    	if((table_zytz+'')=='undefined'){
    		initDataTable_zytz();
    	}
    	if((table_kjcg+'')=='undefined'){
    		initDataTable_kjcg();
    	}
    	if((table_csjz+'')=='undefined'){
    		initDataTable_csjz();
    	}
    	if((table_ssxx+'')=='undefined'){
    		initDataTable_ssxx();
    	}
    	if((table_cjxm+'')=='undefined'){
    		initDataTable_cjxm();
    	}
    }
    //展开与收缩
    function initAddflex(yrinfo_li){ 
    	 $("#"+yrinfo_li).parent().next().hide();
         $("#"+yrinfo_li).attr("class","flex-icon on")
   }
    //初始化异常全部收缩
    function initSSFlex(){
    	$("table").hide();
    }
    //化学药品原料药制造
    function initDataTable_hxyp() {
    	table_hxyp = dataTable.load({
		el : '#table_hxyp',
		showIndex: true,
		scrollX: true,
		lengthMenu: [ 5, 10, 20, 50],
		ajax : {
			url : '/data/product/hxyp' ,
			data :function(d){
				d.params = params;
			}
		},
		columns : [
		    {data:null,defaultContent:1,className:'center'},
		    {data:'dwmc',cut : {length : 20,repalce : '...'}},
			{data:'wtjgtym',cut : {length : 20,repalce : '...'}},
			{data:'ypswtjgsl',cut : {length : 20,repalce : '...'}},
			{data:'ypjgwtfmc',cut : {length : 20,repalce : '...'}},
			{data:'ypjgqx',cut : {length : 20,repalce : '...'}},
			{data:'ypwtjgbarq',cut : {length : 20,repalce : '...'}}
		],
		columnDefs : [
		              
				 ]
	  });
    	table_hxyp.on('init.dt', function (e, settings, json){
    		var hxypNum = json.recordsTotal;
    		if(hxypNum <= 5){
    			$('#table_hxyp_wrapper .bottom').hide();
    		}else{
    			$('#table_hxyp_wrapper .bottom').show();
    		}
    		if(hxypNum == 0){
    			initAddflex("table_hxyp_icon");
    		}
    		if(hxypNum > 0){
    			$("#hxyp_Nm").text(hxypNum);
    			$("#hxyp_Nm").css("color","red");
    		}
        })
	}
  //医疗器械制造
    function initDataTable_ylqx() {
    	table_ylqx = dataTable.load({
		el : '#table_ylqx',
		showIndex: true,
		scrollX: true,
		lengthMenu: [ 5, 10, 20, 50],
		ajax : {
			url : '/data/product/ylqx' ,
			data :function(d){
				d.params = params;
			}
		},
		columns : [
		    {data:null,defaultContent:1,className:'center'},
		    {data:'qymcWt',cut : {length : 20,repalce : '...'}},
		    {data:'scxkbahWt',cut : {length : 20,repalce : '...'}},
			{data:'wtsccpmc',cut : {length : 20,repalce : '...'}},
			{data:'cpzch',cut : {length : 20,repalce : '...'}},
			{data:'wtqx',cut : {length : 20,repalce : '...'}},
			{data:'wtrq',cut : {length : 20,repalce : '...'}},
			{data:'babm',cut : {length : 20,repalce : '...'}}
		],
		columnDefs : [
				 ],
	    	    
	  });
    	table_ylqx.on('init.dt', function (e, settings, json){
    		var ylqxNum = json.recordsTotal;
    		if(ylqxNum <= 5){
    			$('#table_ylqx_wrapper .bottom').hide();
			}else{
				$('#table_ylqx_wrapper .bottom').show();
			}
    		if(ylqxNum == 0){
    			initAddflex("table_ylqx_icon");
    		}
    		if(ylqxNum > 0){
    			$("#ylqx_Nm").text(ylqxNum);
    			$("#ylqx_Nm").css("color","red");
    		}
    		
        })
	}
    
  //印刷委托书备案信息
    function initDataTable_ysww() {
    	table_ysww = dataTable.load({
		el : '#table_ysww',
		showIndex: true,
		scrollX: true,
		lengthMenu: [ 5, 10, 20, 50],
		ajax : {
			url : '/data/product/ysww' ,
			data :function(d){
				d.params = params;
			}
		},
		columns : [
		    {data:null,defaultContent:1,className:'center'},
		    {data:'wtyssbh',cut : {length : 20,repalce : '...'}},
			{data:'wtyssm',cut : {length : 20,repalce : '...'}},
			{data:'wtfcbdw',cut : {length : 20,repalce : '...'}},
			{data:'yswtscjsj',cut : {length : 20,repalce : '...'}},
			{data:'cbdwblsj',cut : {length : 20,repalce : '...'}},
			{data:'ysqyblsj',cut : {length : 20,repalce : '...'}},
			{data:'cxwtssj',cut : {length : 20,repalce : '...'}}
		],
		columnDefs : [
				 ],
	    	    
	  });
    	table_ysww.on('init.dt', function (e, settings, json){
    		var yswwNum =  json.recordsTotal;
    		if(yswwNum <= 5){
    			$('#table_ysww_wrapper .bottom').hide();
			}else{
				$('#table_ysww_wrapper .bottom').show();
			}
    		if(yswwNum == 0){
    			initAddflex("table_ysww_icon");
    		}
    		if(yswwNum > 0){
    			$("#ysww_Nm").text(yswwNum);
    			$("#ysww_Nm").css("color","red");
    		}
    		
        })
	}
    
  //测绘与地理项目信息
    function initDataTable_dlch() {
    	table_dlch = dataTable.load({
		el : '#table_dlch',
		showIndex: true,
		scrollX: true,
		lengthMenu: [ 5, 10, 20, 50],
		ajax : {
			url : '/data/product/dlch' ,
			data :function(d){
				d.params = params;
			}
		},
		columns : [
		    {data:null,defaultContent:1,className:'center'},
		    {data:'dwmc',cut : {length : 20,repalce : '...'}},
		    {data:'xmmc',cut : {length : 20,repalce : '...'}},
			{data:'wtdw',cut : {length : 20,repalce : '...'}},
			{data:'xmlx',cut : {length : 20,repalce : '...'}},
			{data:'xmkssj',cut : {length : 20,repalce : '...'}},
			{data:'xmwgsj',cut : {length : 20,repalce : '...'}},
			{data:'xmje',cut : {length : 20,repalce : '...'}},
			{data:'xmbasj',cut : {length : 20,repalce : '...'}}
		],
		columnDefs : [
				 ],
	    	    
	  });
    	table_dlch.on('init.dt', function (e, settings, json){
    		var dlchNum = json.recordsTotal;
    		if(dlchNum <= 5){
    			$('#table_dlch_wrapper .bottom').hide();
			}else{
				$('#table_dlch_wrapper .bottom').show();
			}
    		if(dlchNum == 0){
    			initAddflex("table_dlch_icon");
    		}
    		if(dlchNum > 0){
    			$("#dlch_Nm").text(dlchNum);
    			$("#dlch_Nm").css("color","red");
    		}
    		
        })
	}
  //国家知识产权软科学研究计划项目信息
    function initDataTable_zscq() {
    	table_zscq = dataTable.load({
		el : '#table_zscq',
		showIndex: true,
		scrollX: true,
		lengthMenu: [ 5, 10, 20, 50],
		ajax : {
			url : '/data/product/zscq' ,
			data :function(d){
				d.params = params;
			}
		},
		columns : [
		    {data:null,defaultContent:1,className:'center'},
		    {data:'dwmc',cut : {length : 20,repalce : '...'}},
			{data:'xmbh',cut : {length : 20,repalce : '...'}},
			{data:'xmmc',cut : {length : 20,repalce : '...'}}
		],
		columnDefs : [
				 ],
	    	    
	  });
    	table_zscq.on('init.dt', function (e, settings, json){
    		var zscqNum = json.recordsTotal;
    		if(zscqNum <= 5){
    			$('#table_zscq_wrapper .bottom').hide();
			}else{
				$('#table_zscq_wrapper .bottom').show();
			}
    		if(zscqNum == 0){
    			initAddflex("table_zscq_icon");
    		}
    		if(zscqNum > 0){
    			$("#zscq_Nm").text(zscqNum);
    			$("#zscq_Nm").css("color","red");
    		}
    		
        })
	}
    
  //交通建设项目信息
    function initDataTable_jtjs() {
    	table_jtjs = dataTable.load({
		el : '#table_jtjs',
		showIndex: true,
		scrollX: true,
		lengthMenu: [ 5, 10, 20, 50],
		ajax : {
			url : '/data/product/jtjs' ,
			data :function(d){
				d.params = params;
			}
		},
		columns : [
		    {data:null,defaultContent:1,className:'center'},
		    {data:'xmmc',cut : {length : 20,repalce : '...'}},
			{data:'gczt',cut : {length : 20,repalce : '...'}},
			{data:'xmlx',cut : {length : 20,repalce : '...'}},
			{data:'kgsj',cut : {length : 20,repalce : '...'}},
			{data:'jgsj',cut : {length : 20,repalce : '...'}}
		],
		columnDefs : [
				 ],
	    	    
	  });
    	table_jtjs.on('init.dt', function (e, settings, json){
    		var jtjsNum = json.recordsTotal;
    		if(jtjsNum <= 5){
    			$('#table_jtjs_wrapper .bottom').hide();
			}else{
				$('#table_jtjs_wrapper .bottom').show();
			}
    		if(jtjsNum == 0){
    			initAddflex("table_jtjs_icon");
    		}
    		if(jtjsNum > 0){
    			$("#jtjs_Nm").text(jtjsNum);
    			$("#jtjs_Nm").css("color","red");
    		}
        })
	}
    
  //重大产业项目信息
    function initDataTable_zdcy() {
    	table_zdcy = dataTable.load({
		el : '#table_zdcy',
		showIndex: true,
		scrollX: true,
		lengthMenu: [ 5, 10, 20, 50],
		ajax : {
			url : '/data/product/zdcy' ,
			data :function(d){
				d.params = params;
			}
		},
		columns : [
		    {data:null,defaultContent:1,className:'center'},
		    {data:'xmmc',cut : {length : 20,repalce : '...'}},
			{data:'hydw',cut : {length : 20,repalce : '...'}},
			{data:'xmnf',cut : {length : 20,repalce : '...'}},
			{data:'cyxmkgsj',cut : {length : 20,repalce : '...'}},
			{data:'jgsj',cut : {length : 20,repalce : '...'}},
			{data:'zyd',cut : {length : 20,repalce : '...'}}
		],
		columnDefs : [
				 ],
	    	    
	  });
    	table_zdcy.on('init.dt', function (e, settings, json){
    		var zdcyNum = json.recordsTotal;
    		if(zdcyNum <= 5){
    			$('#table_zdcy_wrapper .bottom').hide();
			}else{
				$('#table_zdcy_wrapper .bottom').show();
			}
    		if(zdcyNum == 0){
    			initAddflex("table_zdcy_icon");
    		}
    		if(zdcyNum > 0){
    			$("#zdcy_Nm").text(zdcyNum);
    			$("#zdcy_Nm").css("color","red");
    		}
        })
	}
    
  //企业投资项目信息
    function initDataTable_qytz() {
    	table_qytz = dataTable.load({
		el : '#table_qytz',
		showIndex: true,
		scrollX: true,
		lengthMenu: [ 5, 10, 20, 50],
		ajax : {
			url : '/data/product/qytz' ,
			data :function(d){
				d.params = params;
			}
		},
		columns : [
		    {data:null,defaultContent:1,className:'center'},
		    {data:'jsxmmc',cut : {length : 20,repalce : '...'}},
			{data:'zyjsnrjgm',cut : {length : 20,repalce : '...'}},
			{data:'jsqssj',cut : {length : 20,repalce : '...'}},
			{data:'jsjssj',cut : {length : 20,repalce : '...'}},
			{data:'xmztz',cut : {length : 20,repalce : '...'}}
		],
		columnDefs : [
				 ],
	    	    
	  });
    	table_qytz.on('init.dt', function (e, settings, json){
    		var qytzNum = json.recordsTotal;
    		if(qytzNum <= 5){
    			$('#table_qytz_wrapper .bottom').hide();
			}else{
				$('#table_qytz_wrapper .bottom').show();
			}
    		if(qytzNum == 0){
    			initAddflex("table_qytz_icon");
    		}
    		if(qytzNum > 0){
    			$("#qytz_Nm").text(qytzNum);
    			$("#qytz_Nm").css("color","red");
    		}
        })
	}
    
    //社会发展项目信息
    function initDataTable_shfz() {
    	table_shfz = dataTable.load({
		el : '#table_shfz',
		showIndex: true,
		scrollX: true,
		lengthMenu: [ 5, 10, 20, 50],
		ajax : {
			url : '/data/product/shfz' ,
			data :function(d){
				d.params = params;
			}
		},
		columns : [
		    {data:null,defaultContent:1,className:'center'},
		    {data:'xmmc',cut : {length : 20,repalce : '...'}},
			{data:'shfzxmjsnr',cut : {length : 20,repalce : '...'}},
			{data:'jsgq',cut : {length : 20,repalce : '...'}},
			{data:'xmztz',cut : {length : 20,repalce : '...'}},
			{data:'xmzt',cut : {length : 20,repalce : '...'}}
		],
		columnDefs : [
				 ],
	    	    
	  });
    	table_shfz.on('init.dt', function (e, settings, json){
    		var shfzNum = json.recordsTotal;
    		if(shfzNum <= 5){
    			$('#table_shfz_wrapper .bottom').hide();
			}else{
				$('#table_shfz_wrapper .bottom').show();
			}
    		if(shfzNum == 0){
    			initAddflex("table_shfz_icon");
    		}
    		if(shfzNum > 0){
    			$("#shfz_Nm").text(shfzNum);
    			$("#shfz_Nm").css("color","red");
    		}
        })
	}
    //中央投资项目信息
    function initDataTable_zytz() {
    	table_zytz = dataTable.load({
		el : '#table_zytz',
		showIndex: true,
		scrollX: true,
		lengthMenu: [ 5, 10, 20, 50],
		ajax : {
			url : '/data/product/zytz' ,
			data :function(d){
				d.params = params;
			}
		},
		columns : [
		    {data:null,defaultContent:1,className:'center'},
		    {data:'xmmc',cut : {length : 20,repalce : '...'}},
			{data:'zxmc',cut : {length : 20,repalce : '...'}},
			{data:'jhjsnrygm',cut : {length : 20,repalce : '...'}},
			{data:'xmztz',cut : {length : 20,repalce : '...'}}
		],
		columnDefs : [
				 ],
	    	    
	  });
    	table_zytz.on('init.dt', function (e, settings, json){
    		var zytzNum = json.recordsTotal;
    		if(zytzNum <= 5){
    			$('#table_zytz_wrapper .bottom').hide();
			}else{
				$('#table_zytz_wrapper .bottom').show();
			}
    		if(zytzNum == 0){
    			initAddflex("table_zytz_icon");
    		}
    		if(zytzNum > 0){
    			$("#zytz_Nm").text(zytzNum);
    			$("#zytz_Nm").css("color","red");
    		}
    		
        })
	}
    
  // 科技成果
    function initDataTable_kjcg() {
    	table_kjcg = dataTable.load({
		el : '#table_kjcg',
		showIndex: true,
		scrollX: true,
		lengthMenu: [ 5, 10, 20, 50],
		ajax : {
			url : '/data/product/kjcg' ,
			data :function(d){
				d.params = params;
			}
		},
		columns : [
		    {data:null,defaultContent:1,className:'center'},
		    {data:'kjcgmc',cut : {length : 20,repalce : '...'}},
			{data:'kjcgdjh',cut : {length : 20,repalce : '...'}},
			{data:'zscq',cut : {length : 20,repalce : '...'}},
			{data:'cggbnr',cut : {length : 20,repalce : '...'}}
		],
		columnDefs : [
				 ],
	    	    
	  });
    	table_kjcg.on('init.dt', function (e, settings, json){
    		var kjcgNum = json.recordsTotal;
    		if(kjcgNum <= 5){
    			$('#table_kjcg_wrapper .bottom').hide();
			}else{
				$('#table_kjcg_wrapper .bottom').show();
			}
    		if(kjcgNum == 0){
    			initAddflex("table_kjcg_icon");
    		}
    		if(kjcgNum > 0){
    			$("#kjcg_Nm").text(kjcgNum);
    			$("#kjcg_Nm").css("color","red");
    		}
    		
        })
	}
 // 慈善捐赠
    function initDataTable_csjz() {
    	table_csjz = dataTable.load({
		el : '#table_csjz',
		showIndex: true,
		scrollX: true,
		lengthMenu: [ 5, 10, 20, 50],
		ajax : {
			url : '/data/product/csjz' ,
			data :function(d){
				d.params = params;
			}
		},
		columns : [
		    {data:null,defaultContent:1,className:'center'},
			{data:'jzxmmc',cut : {length : 20,repalce : '...'}},
			{data:'jzje',cut : {length : 20,repalce : '...'}},
			{data:'sldw',cut : {length : 20,repalce : '...'}},
			{data:'jzrq',cut : {length : 20,repalce : '...'}}
		],
		columnDefs : [
				 ],
	    	    
	  });
    	table_csjz.on('init.dt', function (e, settings, json){
    		var csjzNum = json.recordsTotal;
    		if(csjzNum <= 5){
    			$('#table_csjz_wrapper .bottom').hide();
			}else{
				$('#table_csjz_wrapper .bottom').show();
			}
    		if(csjzNum == 0){
    			initAddflex("table_csjz_icon");
    		}
    		if(csjzNum > 0){
    			$("#csjz_Nm").text(csjzNum);
    			$("#csjz_Nm").css("color","red");
    		}
        })
	}
    
 // 上市信息
    function initDataTable_ssxx() {
    	table_ssxx = dataTable.load({
		el : '#table_ssxx',
		showIndex: true,
		scrollX: true,
		lengthMenu: [ 5, 10, 20, 50],
		ajax : {
			url : '/data/product/ssxx' ,
			data :function(d){
				d.params = params;
			}
		},
		columns : [
		    {data:null,defaultContent:1,className:'center'},
		    {data:'dwmc',cut : {length : 20,repalce : '...'}},
			{data:'gpdm',cut : {length : 20,repalce : '...'}},
			{data:'sjrq',cut : {length : 20,repalce : '...'}}
		],
		columnDefs : [
				 ],
	    	    
	  });
    	table_ssxx.on('init.dt', function (e, settings, json){
    		var ssxxNum = json.recordsTotal;
    		if(ssxxNum <= 5){
    			$('#table_ssxx_wrapper .bottom').hide();
			}else{
				$('#table_ssxx_wrapper .bottom').show();
			}
    		if(ssxxNum == 0){
    			initAddflex("table_ssxx_icon");
    		}
    		if(ssxxNum > 0){
    			$("#ssxx_Nm").text(ssxxNum);
    			$("#ssxx_Nm").css("color","red");
    		}
        })
	}
    
 // 承建项目
    function initDataTable_cjxm() {
    	table_cjxm = dataTable.load({
		el : '#table_cjxm',
		showIndex: true,
		scrollX: true,
		lengthMenu: [ 5, 10, 20, 50],
		ajax : {
			url : '/data/product/cjxm' ,
			data :function(d){
				d.params = params;
			}
		},
		columns : [
		    {data:null,defaultContent:1,className:'center'},
		    {data:'xmmc',cut : {length : 20,repalce : '...'}},
			{data:'xmdw',cut : {length : 20,repalce : '...'}},
			{data:'jsnr',cut : {length : 20,repalce : '...'}},
			{data:'xmztz',cut : {length : 20,repalce : '...'}}
		],
		columnDefs : [
				 ],
	    	    
	  });
    	table_cjxm.on('init.dt', function (e, settings, json){
    		var cjxmNum = json.recordsTotal;
    		if(cjxmNum <= 5){
    			$('#table_cjxm_wrapper .bottom').hide();
			}else{
				$('#table_cjxm_wrapper .bottom').show();
			}
    		if(cjxmNum == 0){
    			initAddflex("table_cjxm_icon");
    		}
    		if(cjxmNum > 0){
    			$("#cjxm_Nm").text(cjxmNum);
    			$("#cjxm_Nm").css("color","red");
    		}
        })
	}
    
    
    /**
     * 事件绑定
     * @private
     */
    function _bind() {
        util.bindEvents([
            {
                el: '.flex-icon',
                event: 'click',
                handler: function () {
                    // 隐藏table
                    $(this).parent().next().hide();
                    $(this).attr("class","flex-icon on")
                }
            },
            {
                el: '.on',
                event: 'click',
                handler: function () {
                    // 显示table
                    $(this).parent().next().show();
                    $(this).attr("class","flex-icon");
                }
            }
        ])
    }
});