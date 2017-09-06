<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<style type="text/css">
		.dataTables_scrollHeadInner {
			width: 100% !important;
		}
	</style>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
	<link rel="shortcut icon" href="<c:url value='/img/favicon.ico'/>" type="image/x-icon"/>
	<link rel="stylesheet" href="<c:url value='/css/vendor/dataTables.bootstrap.min.css'/>">
	<link rel="stylesheet" href="<c:url value="/css/style.css"/>">
	<meta charset="utf-8">
	<title>法人许可、资质与荣誉信息</title>
</head>
<body>
<jsp:include page="../../common/header.jsp?ref=detail"/>
<input type="hidden" id="errormsg" name="errormsg" value="${xkxx['error']}">
<input type="hidden" id="frwybs" value="${frwybs}"/>
<div class="iframe-wrap bg-white">
	<div class="pd15">
		<div class="reg-caption">
			<div class="title clearfix">
				<span class="name fl mr5">${xkxx['ztdj'].frmc}</span>
				<span class="icon-rectangle green fl mr10">${xkxx['ztdj'].cxzt}</span>
				<%-- <c:if test="${xkxx['ztdj'].cxzt == '存续'}">
					<span class="icon-rectangle green fl mr10">存续</span>
				</c:if>
				<c:if test="${xkxx['ztdj'].cxzt == '注销'}">
					<span class="icon-rectangle gray fl mr10">注销</span>
				</c:if>
				<c:if test="${xkxx['ztdj'].cxzt == '个转企'}">
					<span class="icon-rectangle blue fl mr10">个转企</span>
				</c:if>
				<c:if test="${xkxx['ztdj'].cxzt == '被列入经营异常名录和严重违法失信（黑名单）'}">
					<span class="icon-rectangle red fl mr10">被列入经营异常名录和严重违法失信（黑名单）</span>
				</c:if> --%>
			</div>
			<p>
				统一社会信用代码/注册号：${xkxx['ztdj'].tyxydm}
			</p><!-- 
			<c:if test="${not empty xkxx['ztdj'].datakeycontent}">
				<span  style="font-size: 14px;color:#055486;float: right;margin-top: -47px;">
				<a href="/data/relationnetall/relationShow?priPID=${xkxx['ztdj'].datakeycontentForEncode}" target="_blank"><input type="button" class="js-relation btn mr20"  value="关系网查询"  data-layout="circular" style="border: 0px;background: #43a8e8"></a></span>
			</c:if> -->
		</div>
		<div class="tabbale">
			<div class="tab-header type-tab person-tab">
				<ul class="clearfix">
					<li class=""><span class="tab-item"><a
						href="<c:url value='/data/frdetail/djjbxx/${frwybs}'/>">基本信息<!-- （<span id="jbxx_Nm">0</span>） --></a></span>
					</li>
					<li class=""><span class="tab-item"><a
						href="<c:url value='/data/frdetail/zbyzc/${frwybs}'/>">资本与资产<!-- （<span id="zbzc_Nm">0</span>） --></a></span>
					</li>
					<li class="tab-selected"><span class="tab-item"><a href="<c:url value='/data/frdetail/admission/${frwybs}'/>">许可、资质与荣誉<!-- （<span
						id="xkzz_Nm">0</span>） --></a></span>
					</li>
					<li><span class="tab-item"><a href="<c:url value='/data/frdetail/tax/${frwybs}'/>">纳税、参保与缴费<!-- （<span
						id="nscb_Nm">0</span>） --></a></span>
					</li>
					<li><span class="tab-item"><a href="<c:url value='/data/frdetail/produce/${frwybs}'/>">生产经营<!-- （<span
						id="scjy_Nm">0</span>） --></a></span>
					</li>
					<li><span class=""><a
						href="<c:url value='/data/frdetail/lawenforce/${frwybs}'/>">行政执法<!-- （<span
						id="xzzf_Nm">0</span>） --></a></span>
					</li>
					<li><span class="tab-item"><a href="<c:url value='/data/frdetail/lawinfo/${frwybs}'/>">司法信息<!-- （<span
						id="sfxx_Nm">0</span>） --></a></span>
					</li>
					<%--                     <li><span class="tab-item"><a href="<c:url value='/data/frdetail/comment/${frwybs}'/>">评价信息</a></span>
															</li>
					 --%>
				</ul>
			</div>


			<div class="tab-content">
				<div class="tab-panel tab-panel-show">

					<div class="light-info mt10 center pos-rel">
						<i id="table_xzxk_icon" class="flex-icon"></i>行政许可信息(<span id="xzxk">0</span>)
					</div>
					<table style="width:100%!important" id="table_xzxk" class="table-row  nowrap"
					       width="100%" cellpadding="0" cellspacing="0" border="0">
						<thead>
						<tr>
							<th  style="padding: 0 20px;" width="5%">序号</th>
							<th>行政许可文（证）编号</th>
							<th>行政许可内容</th>
							<th>行政许可核发机关名称</th>
							<th>行政许可核发机关日期</th>
							<th>许可证状态</th>
							<th>行政许可有效期自</th>
							<th>行政许可有效期至</th>
						</tr>
						</thead>
					</table>
					<%--------------------------------------------------------------------------------------------%>

					<div class="light-info mt10 center pos-rel">
						<i id="table_xzba_icon" class="flex-icon"></i>行政备案信息(<span id="xzba">0</span>)
					</div>
					<table style="width:100%!important" id="table_xzba" class="table-row  nowrap"
					       width="100%" cellpadding="0" cellspacing="0" border="0">
						<thead>
						<tr>
							<th  style="padding: 0 20px;" width="5%">序号</th>
							<th>备案名称</th>
							<th>备案内容</th>
							<th>备案机关</th>
							<th>备案核发机关日期</th>
							<th>备案有效期自</th>
							<th>备案有效期至</th>
						</tr>
						</thead>
					</table>
					<%--------------------------------------------------------------------------------------------%>

					<div class="light-info mt10 center pos-rel">
						<i id="table_zzxx_icon" class="flex-icon"></i>资质信息(<span id="zzxx">0</span>)
					</div>
					<table style="width:100%!important" id="table_zzxx" class="table-row  nowrap"
					       width="100%" cellpadding="0" cellspacing="0" border="0">
						<thead>
						<tr>
							<th  style="padding: 0 20px;" width="5%">序号</th>
							<th>资质证书名称</th>
							<th>资质等级名称</th>
							<th>资质证书颁发机关</th>
							<th>资质证书颁发日期</th>
							<th>资质证书状态</th>
							<th>资质有效期自</th>
							<th>资质有效期至</th>
						</tr>
						</thead>
					</table>
					<%--------------------------------------------------------------------------------------------%>

					<div class="light-info mt10 center pos-rel">
						<i id="table_ryxx_icon" class="flex-icon"></i>荣誉信息(<span id="ryxx">0</span>)
					</div>
					<table style="width:100%!important" id="table_ryxx" class="table-row  nowrap"
					       width="100%" cellpadding="0" cellspacing="0" border="0">
						<thead>
						<tr>
							<th  style="padding: 0 20px;" width="5%">序号</th>
							<th>荣誉名称</th>
							<th>荣誉奖励对象</th>
							<th>荣誉认定日期</th>
							<th>荣誉证书有效期自</th>
							<th>荣誉证书有效期至</th>
							<th>荣誉颁发机构</th>
							<th>荣誉颁发年度</th>
							<th>荣誉内容</th>
						</tr>
						</thead>
					</table>
					<%--------------------------------------------------------------------------------------------%>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="../../common/common.jsp"/>
<script src="<c:url value='/js/business/dataquery/frAdmission.js'/>"></script>
</body>
</html>
