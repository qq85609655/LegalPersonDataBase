require(['component/iframeLayer', 'component/dataTable', 'common/util', 'common/http', 
	'handlebars', 'jquery','jquery.serialize','laydate','jquery.validate','pagination'], 
	function (layer, dataTable, util, http,handlebars) {
	

	var params = $("#produce-form").serializeObject();
	var table_hxyp,table_ylqx,table_ajdsrxx,table_sx;

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
    	if((table_ajdsrxx+'')=='undefined'){
    		initDataTable_ajdsrxx();
    	}
    	if((table_sx+'')=='undefined'){
    		initDataTable_sx();
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
    //案件信息
    function initDataTable_hxyp() {
    	table_hxyp = dataTable.load({
		el : '#table_hxyp',
		showIndex: true,
		scrollX: true,
		lengthMenu: [ 5, 10, 20, 50],
		ajax : {
			url : '/data/law/ajxx' ,
			data :function(d){
				d.params = params;
			}
		},
		columns : [
		    {data:null,defaultContent:1,className:'center'},
		    {data:'ajdsrmc',cut : {length : 20,repalce : '...'}},
		    {data:'ah',cut : {length : 20,repalce : '...'}},
			{data:'ay',cut : {length : 20,repalce : '...'}},
			{data:'jarq',cut : {length : 20,repalce : '...'}},
			{data:'pjjg',cut : {length : 20,repalce : '...'}},
			{data:'sxrq',cut : {length : 20,repalce : '...'}}
		],
		columnDefs : [
		              
				 ]
	  });
    	table_hxyp.on('init.dt',function(e,settings,json){
    		var ajxxNum=json.recordsTotal;
    		if(ajxxNum <= 5){
    			$('#table_hxyp_wrapper .bottom').hide();
    		}else{
    			$('#table_hxyp_wrapper .bottom').show();
    		}
    		if(ajxxNum == 0){
    			initAddflex("table_hxyp_icon");
    		}
    		
    		if(ajxxNum>0){  			
    			$("#ajxx").text(ajxxNum);
    			$("#ajxx").css("color","red");       		    			
    		}
    		
        })
	}
  //单位未履行生效裁判信息
    function initDataTable_ylqx() {
    	table_ylqx = dataTable.load({
		el : '#table_ylqx',
		showIndex: true,
		scrollX: true,
		lengthMenu: [ 5, 10, 20, 50],
		ajax : {
			url : '/data/law/wlx' ,
			data :function(d){
				d.params = params;
			}
		},
		columns : [
		    {data:null,defaultContent:1,className:'center'},
		    {data:'zxfy',cut : {length : 20,repalce : '...'}},
			{data:'zxyj',cut : {length : 20,repalce : '...'}},
			{data:'zxay',cut : {length : 20,repalce : '...'}},
			{data:'lxsj',cut : {length : 20,repalce : '...'}},
			{data:'wzxje',cut : {length : 20,repalce : '...'}},
			{data:'wzxxw',cut : {length : 20,repalce : '...'}},
			{data:'wzxwp',cut : {length : 20,repalce : '...'}}
		],
		columnDefs : [
				 ],
	    	    
	  });
    	table_ylqx.on('init.dt',function(e,settings,json){
    		var WlxNum=json.recordsTotal;
    		if(WlxNum <= 5){
    			$('#table_ylqx_wrapper .bottom').hide();
			}else{
				$('#table_ylqx_wrapper .bottom').show();
			}
    		if(WlxNum == 0){
    			initAddflex("table_ylqx_icon");
    		}
    		if(WlxNum>0){
    			$("#wlx").text(WlxNum);
    			$("#wlx").css("color","red");       		    			
    		}
    		
        })
	}
    
  //案件当事人信息
    function initDataTable_ajdsrxx() {
    	table_ajdsrxx = dataTable.load({
		el : '#table_ajdsrxx',
		showIndex: true,
		scrollX: true,
		lengthMenu: [ 5, 10, 20, 50],
		ajax : {
			url : '/data/law/ajdsrxx' ,
			data :function(d){
				d.params = params;
			}
		},
		columns : [
		    {data:null,defaultContent:1,className:'center'},
			{data:'dsrmc',cut : {length : 20,repalce : '...'}},
			{data:'sfzjhm',cut : {length : 20,repalce : '...'}},
			{data:'dsrlx',cut : {length : 20,repalce : '...'}},
			{data:'datasrdep',cut : {length : 20,repalce : '...'}},
			{data:'ssdw',cut : {length : 20,repalce : '...'}}
		],
		columnDefs : [
		              
				 ]
	  });
    	table_ajdsrxx.on('init.dt',function(e,settings,json){
    		var ajdsrNum=json.recordsTotal;
    		if(ajdsrNum<= 5){
    			$('#table_ajdsrxx_wrapper .bottom').hide();
    		}else{
    			$('#table_ajdsrxx_wrapper .bottom').show();
    		}
    		if(ajdsrNum== 0){
    			initAddflex("table_ajdsrxx_icon");
    		}
    		if(ajdsrNum>0){
    			$("#ajdsr").text(ajdsrNum);
    			$("#ajdsr").css("color","red"); 
    			
    		}
        })
	}
    
    
    
    
  //失信被执行人
    function initDataTable_sx() {
    	table_sx = dataTable.load({
		el : '#table_sx',
		showIndex: true,
		scrollX: true,
		lengthMenu: [ 5, 10, 20, 50],
		ajax : {
			url : '/data/law/sx' ,
			data :function(d){
				d.params = params;
			}
		},
		columns : [
		    {data:null,defaultContent:1,className:'center'},
			{data:'bzxrmc',cut : {length : 20,repalce : '...'}},
			{data:'zxfy',cut : {length : 20,repalce : '...'}},
			{data:'lasj',cut : {length : 20,repalce : '...'}},
			{data:'zczxyjdw',cut : {length : 20,repalce : '...'}},
			{data:'bzxrlxqk',cut : {length : 20,repalce : '...'}},
			{data:'fbsj',cut : {length : 20,repalce : '...'}}
		],
		columnDefs : [
		              
				 ]
	  });
    	table_sx.on('init.dt',function(e,settings,json){
    		var sxNum=json.recordsTotal;
    		if(sxNum <= 5){
    			$('#table_sx_wrapper .bottom').hide();
    		}else{
    			$('#table_sx_wrapper .bottom').show();
    		}
    		if(sxNum == 0){
    			initAddflex("table_sx_icon");
    		}
    		if(sxNum>0){
    			$("#sx").text(sxNum);
    			$("#sx").css("color","red"); 
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
