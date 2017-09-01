<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
	<link rel="shortcut icon" href="<c:url value='/img/favicon.ico'/>" type="image/x-icon"/>
	<link rel="stylesheet" href="<c:url value='/css/vendor/dataTables.bootstrap.min.css'/>">
	<link rel="stylesheet" href="<c:url value="/css/style.css"/>">
	<meta charset="utf-8">
	<title>法人司法信息</title>
	<style type="text/css">
		.dataTables_scrollHeadInner {
			width: 100% !important;
		}
		
		.white-space-n{
			white-space: normal!important;
			/* text-align:left!important; */
		}
		
		
	</style>
</head>
<body>

<form id="produce-form">
	<input type="hidden" id="frwybs" name="frwybs" value="${frwybss}">
</form>
<input type="hidden" id="errormsg" name="errormsg" value="${lawinfo['error']}">

<jsp:include page="../../common/header.jsp?ref=detail"/>
<input type="hidden" id="frwybs" value="${frwybs}"/>
<div class="iframe-wrap bg-white">
	<div class="pd15">
		<div class="reg-caption">
			<div class="title clearfix">
				<span class="name fl mr5">${lawinfo['ztdj'].frmc}</span>
				<span class="icon-rectangle green fl mr10">${lawinfo['ztdj'].cxzt}</span>
			</div>
			<p>
				统一社会信用代码/注册号：${lawinfo['ztdj'].tyxydm}
			</p>
			<c:if test="${not empty lawinfo['ztdj'].datakeycontent}">
				<span style="font-size: 14px;color:#055486;float: right;margin-top: -47px;">
				<a href="/data/relationnetall/relationShow?priPID=${lawinfo['ztdj'].datakeycontentForEncode}" target="_blank"><input type="button" class="js-relation btn mr20"  value="关系网查询"  data-layout="circular" style="border: 0px;background: #43a8e8"></a></span>
			</c:if>
		</div>
		<div class="tabbale">
			<div class="tab-header type-tab person-tab">
				<ul class="clearfix">
					<li ><span class="tab-item"><a
						href="<c:url value='/data/frdetail/djjbxx/${frwybs}'/>">基本信息<!-- （<span id="jbxx_Nm">0</span>） --></a></span>
					</li>
					<li class=""><span class="tab-item"><a
						href="<c:url value='/data/frdetail/zbyzc/${frwybs}'/>">资本与资产<!-- （<span id="zbzc_Nm">0</span>） --></a></span>
					</li>
					<li ><span class="tab-item"><a href="<c:url value='/data/frdetail/admission/${frwybs}'/>">许可、资质与荣誉<!-- （<span
						id="xkzz_Nm">0</span>） --></a></span>
					</li>
					<li><span class="tab-item"><a href="<c:url value='/data/frdetail/tax/${frwybs}'/>">纳税、参保与缴费<!-- （<span
						id="nscb_Nm">0</span>） --></a></span>
					</li>
					<li><span class="tab-item"><a href="<c:url value='/data/frdetail/produce/${frwybs}'/>">生产经营<!-- （<span
						id="scjy_Nm">0</span>） --></a></span>
					</li>
					<li ><span class=""><a
						href="<c:url value='/data/frdetail/lawenforce/${frwybs}'/>">行政执法<!-- （<span
						id="xzzf_Nm">0</span>） --></a></span>
					</li>
					<li class="tab-selected"><span class="tab-item"><a href="<c:url value='/data/frdetail/lawinfo/${frwybs}'/>">司法信息<!-- （<span
						id="sfxx_Nm">0</span>） --></a></span>
					</li>
					<%-- <li><span class=""><a href="<c:url value='/data/frdetail/comment/${frwybs}'/>">评价信息</a></span>
					</li> --%>
				</ul>
			</div>

			<div class="tab-content">
				<div class="tab-panel tab-panel-show">

					<div class="light-info mt10 center pos-rel">


						<i id="table_hxyp_icon" class="flex-icon"></i>案件信息（<span id="ajxx">0</span>）


					</div>

				

					<table style="width:100%!important" id="table_hxyp" class="table-row nowrap"
					       width="100%" cellpadding="0" cellspacing="0" border="0">
						<thead>
						<tr>
							<th style="padding: 0 20px;" width="5%">序号</th>
							<th>案件当事人名称</th>
							<th>案号</th>
							<th>案由</th>
							<th>结案日期</th>
							<th>判决结果</th>
							<th>生效日期</th>
						</tr>
						</thead>

						
					</table>
					

					<div class="light-info mt10 center pos-rel">

						<i id="table_ylqx_icon" class="flex-icon"></i>单位未履行生效裁判信息（<span id="wlx">0</span>）

					</div>
					
					<table id="table_ylqx" class="table-row nowrap" width="100%" cellpadding="0"
					       cellspacing="0" border="0">
						<thead>
						<tr>
							<th style="padding: 0 20px;" width="5%">序号</th>
							<th>执行法院</th>
							<th>执行依据</th>
							<th>执行案由</th>
							<th>履行时间</th>
							<th>未执行金额(元)</th>
							<th>未执行行为</th>
							<th>未执行物品</th>
						</tr>
						</thead>
						
					</table>
					


					<div class="light-info mt10 center pos-rel">
						<i class="flex-icon" id="table_ajdsrxx_icon"></i>案件当事人信息（<span id="ajdsr">0</span>）
					</div>


					

					<table id="table_ajdsrxx" style="width:100%!important" class="table-row nowrap"
					       width="100%" cellpadding="0" cellspacing="0" border="0">
						<thead>
						<tr>
							<th style="padding: 0 20px;" width="5%">序号</th>
							<th>当事人名称</th>
							<th>身份证件号码</th>
							<th>当事人类型</th>
							<th>数据来源部门</th>
							<th>诉讼地位</th>
						</tr>
						</thead>
						
					</table>
					

					<div class="light-info mt10 center pos-rel">
						<i class="flex-icon" id="table_sx_icon"></i>失信被执行人（<span id="sx">0</span>）
					</div>
					
					<table style="width:100%!important" class="table-row nowrap" id="table_sx"
					       width="100%" cellpadding="0" cellspacing="0" border="0">
						<thead>
						<tr>
							<th style="padding: 0 20px;" width="5%">序号</th>
							<th>被执行人名称</th>
							<th>执行法院</th>
							<th>立案时间</th>
							<th>做出执行依据单位</th>
							<th>被执行人的履行情况</th>
							<th>发布时间</th>
						</tr>
						</thead>
						
					</table>
					
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="../../common/common.jsp"/>
<script src="<c:url value='/js/business/dataquery/frLawInfo.js'/>"></script>
</body>
</html>
