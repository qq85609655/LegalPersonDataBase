require(['component/iframeLayer','common/util', 'common/http', 'handlebars', 'jquery','jquery.validate','jquery.serialize','pagination'], function (layer, util, http, handlebars,jquery) {
	
	/*编译搜索结果handbars模板*/
	var tpl_searchlist = $("#tpl_searchlist").html();
    var searchListTemplate = handlebars.compile(tpl_searchlist);
    handlebars.registerHelper("tableNum",function(index,options){
    	return parseInt(index)+1;
    	});
    handlebars.registerHelper("cerNOFormat",function(value){
    	 var leng =  value.length;
		 if(value && leng >=12){
			 var serNO = value.substr(0,leng-12);
			 return serNO + "*************";
		 }else{
			 return value;
		 }
	 });
    handlebars.registerHelper("isLimitFormat",function(value){
		 if(value == "true"){
			 return '任职资格受限';
		 }
	 });
    handlebars.registerHelper("eachFunction",function(value){
		initPersonEntPageListById(0,value);
	 });
    init();
    
    if($("#keyword").val() != null && $("#keyword").val() != '')
    	$("#searchBtn").click();
    function init(){
		bind();
		formValidate();
	}
    
  //人员身份证获取人员企业列表
	function initPersonEntPageListById(page,pageId){
		 var length=5;
		 var startNum = page*length;
		 //var _params = $('#search-form').serializeObject();//查询参数
		 var keyWord = $('#keyword').val();
		http.httpRequest({
            url: '/data/frdetail/zrrPersonPageList.json',
            serializable: false,
            data: {start: startNum,length: length, cerNo: pageId,keyWord:keyWord},
            success: function (data) {

            	 var itemCount = data.recordsTotal; //获取查询出来的总数
            	 if(itemCount >= 5 ){
            		 $('#'+pageId).pagination(itemCount, {
                         prev_text: '<i class="icon-triangle-left"></i>上一页',
                         next_text: '下一页<i class="icon-triangle-right"></i>',
                         num_display_entries: 3,//主体页数
                         num_edge_entries: 2,//边缘页数
                         items_per_page: 5,
                         current_page: page,
                         link_to: 'javascript:void(0)',
                         ellipse_text: '...',
                         first_text: '首页',
                         last_text: '末页',
                         callback:function(page,jq){
                        	 initPersonEntPageListById(page,jq.attr("id"));
                         }
                     });
            	 }
                 $("#investmentCount_"+pageId).text(itemCount);//总数
                 var pageNum = itemCount%5==0?itemCount/5:Math.ceil(itemCount/5);
                 $("#investmentPageCount_"+pageId).text(pageNum);//共多少页
                
                if (typeof itemCount != 'undefined' && itemCount > 0){
                	var html = "";
                	for(var i=0,k=startNum; i<data.data.length;i++,k++){
                		var regStateName = "";
                		if(data.data[i].regStateName != "" ) {
                			regStateName =  data.data[i].regStateName;
                    	}else{
                    		regStateName = "-";
                    	}
                		var uniCodeAndRegNO = data.data[i].uniCodeAndRegNO;
                		
                		if(uniCodeAndRegNO && $.trim(data.data[i].uniCodeAndRegNO) !="null"){
                			var uniCodeAndRegNOArr = uniCodeAndRegNO.split("/");
                			if(uniCodeAndRegNOArr.length==2){
                				var uniCodeAndRegNO1 = uniCodeAndRegNOArr[0];
                				var uniCodeAndRegNO2 = uniCodeAndRegNOArr[1];
                				if(uniCodeAndRegNO1){
                					uniCodeAndRegNO = uniCodeAndRegNO1;
                				}else if (uniCodeAndRegNO2){
                					uniCodeAndRegNO = uniCodeAndRegNO2;
                				}
                			}
                		}
                		
                		html +='<tr>'+
                               ' <td width="2%">'+(k+1)+' </td>'+
                               '<td ><a href="javascript:;" id="'+data.data[i].frwybs+'" class="frwybs" >'+uniCodeAndRegNO+'</a></td>'+
                               ' <td >'+(data.data[i].entName && data.data[i].entName!="null"?data.data[i].entName:'')+'</td>'+
  								'<td >'+(data.data[i].lerepName && data.data[i].lerepName != "null"?data.data[i].lerepName:'')+'</td>'+
 								'<td>'+(data.data[i].estDate && data.data[i].estDate !="null"?data.data[i].estDate:'')+'</td>'+
                                '<td>'+(data.data[i].regOrgName && data.data[i].regOrgName != 'null'?data.data[i].regOrgName:'')+'</td>'+
                               ' <td>'+regStateName+'</td>'+
                            '</tr>';
                	}
                	$("#table_"+pageId).html(html);
                	$("#page_num_"+pageId).text(data.recordsTotal);
                }else{
            		$("#divTable_"+pageId+"_li").addClass("flexed-icon");
            		$("#divTable_"+pageId).hide();
                	$("#page_num_"+pageId).text(0);
                }
            }
        })
	}
	 //bind
    function formValidate(){
    	 $('#search-form').validate({
             rules: {
             	keyword: {
                     required: true,
                     rangelength: [2, 30]
                 }
             },

             messages: {
             	keyword: {
                     required: '关键字不能为空',
                     rangelength: '关键字长度应该在2-30之间'
                 }
             },
             showErrors: function(errorMap, errorList) {  
                 var msg = "";  
                 $.each( errorList, function(i,v){  
                   msg += (v.message+"\r\n");  
                 });  
                 if(msg!="")
                 layer.msg(msg,{time: 1500});  
             }, 
             onfocusout: false,
             submitHandler: function (form) {
            	 
                 var formParam = $(form).serializeObject();
                
            	 jquery.post("/data/frdetail/zrrPersonListCount",formParam,function (data){
                	 if(parseInt(data) > 1){
                		 $('#num').text(data);
                		 $("#numText").show();
                	 }else{
                		 $('#num').text(data);
                		 $("#numText").hide();
                	 }
                	 $("#h4_count").show();
                 });
                 
                 http.httpRequest({
                	 type: 'post',
                     url: '/data/frdetail/zrrPersonSearchList',
                     data: formParam,
                     success: function (data) {
                    	 $('#search-list').html(searchListTemplate(data));
                    	 //$('#num').text(data.length);
                     }
                 });                
             }
         });	
    }
    function bind(){
    	util.bindEvents([{
            el: '.entName',
            event: 'click',
            handler: function () {
            	/*var cerNO = $(this).attr("id");
            	alert(cerNO);
            	if(cerNO!=null && cerNO != ''){
            		window.open('/data/frdetail/zrrDetail/' + cerNO,'_blank');
            	}*/
            }
        },{
        	el: 'i.fl',
            event: 'click',
            handler: function () {
            	var className = $(this).attr("class");
            	var id = $(this).attr("id");
            	if(className.indexOf("flexed-icon") != -1){
            		$(this).removeClass("flexed-icon");
            		$("#"+id.replace("_li","")).show();
        		}else{
        			$(this).addClass("flexed-icon");
        			$("#"+id.replace("_li","")).hide();
            	}          
            }
        },{
            el: '.frwybs',
            event: 'click',
            handler: function () {
            	var frwybs = $(this).attr("id");
            	if(frwybs!=null && frwybs != ''){
//            		window.open('/data/frdetail/djjbxx/' + frwybs,'_blank');
            		window.location.href="/data/frdetail/djjbxx/"+frwybs;
            	}else{
            		layer.msg("没有查到相关数据");
            	}
            }
        }])
    }
    
})