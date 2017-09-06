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
	<title>法人登记基本信息</title>

	<style type="text/css">
		.dataTables_scrollHeadInner {
			width: 100% !important;
		}

		.white-space-n {
			white-space: normal !important;
			/* text-align:left!important; */
		}
	</style>
</head>
<body>

<form id="produce-form">
	<input type="hidden" id="frwybs" name="frwybs" value="${frwybss}">
	<input type="hidden" id="errormsg" name="errormsg" value="${jbxx['error']}">
</form>

<jsp:include page="../../common/header.jsp?ref=detail"/>
<input type="hidden" id="frwybs" value="${frwybs}"/>
<div class="iframe-wrap bg-white">
	<div class="pd15">
		<div class="reg-caption">
			<div class="title clearfix">
				<span class="name fl mr5">${jbxx['ztdj'].frmc}</span>
				<span class="icon-rectangle green fl mr10">${jbxx['ztdj'].cxzt}</span>
			</div>
			<p>
				统一社会信用代码/注册号：${jbxx['ztdj'].tyxydm}
			</p><!--
			<c:if test="${not empty jbxx['ztdj'].datakeycontent}">
				<span style="font-size: 14px;color:#055486;float: right;margin-top: -47px;">
				<a href="/data/relationnetall/relationShow?priPID=${jbxx['ztdj'].datakeycontentForEncode}" target="_blank"><input type="button" class="js-relation btn mr20"  value="关系网查询"  data-layout="circular" style="border: 0px;background: #43a8e8"></a></span>
			</c:if>-->
		</div>
		<div class="tabbale" data-component="tab">
			<div class="tab-header type-tab person-tab">
				<ul class="clearfix">
					<li class="tab-selected"><span class="tab-item"><a
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
					<div class="light-info mt10 center" style="    text-align: center !important;">
						主体登记信息
					</div>
					<table cellpadding="0" cellspacing="0" border="0" class="table-horizontal">
						<tbody>
						<tr>
							<td class="right bg-blue" width="10%">法人名称</td>
							<td class="min-w150">${jbxx['ztdj'].frmc}</td>
							<td class="right bg-blue" width="10%">法定代表人</td>
							<td class="min-w150">${jbxx['ztdj'].fddbr}</td>
						</tr>
						<tr>
							<td class="right bg-blue">注册地址</td>
							<td>${jbxx['dzxx'].zs}</td>
							<td class="right bg-blue">登记机关</td>
							<td>${jbxx['ztdj'].djjg}</td>
						</tr>

						<tr>
							<td class="right bg-blue">类型</td>
							<td>${jbxx['ztdj'].fr_content}</td>
							<td class="right bg-blue">成立日期</td>
							<td><fmt:formatDate value="${jbxx['ztdj'].djrq}" pattern="yyyy-MM-dd"/></td>
						</tr>
						<tr>
							<td class="right bg-blue">营业期限自</td>
							<td><fmt:formatDate value="${jbxx['ztdj'].jyqsrq}" pattern="yyyy-MM-dd"/></td>
							<td class="right bg-blue">营业期限至</td>
							<td><fmt:formatDate value="${jbxx['ztdj'].jyjzrq}" pattern="yyyy-MM-dd"/></td>
						</tr>
						<tr>
							<td class="right bg-blue">经营范围</td>
							<td>${jbxx['ztdj'].ywfw}</td>
							<td class="right bg-blue">行业</td>
							<td>${jbxx['ztdj'].hydm}</td>
						</tr>
						</tbody>
					</table>


					<div class="light-info mt10 center pos-rel">
						<i class="flex-icon" id="table_fddbr_icon"></i>法定代表人_高管(<span id="ggryxx">0</span>)
					</div>

					<table id="table_fddbr" style="width:100%!important" class="table-row nowrap"
					       width="100%">
						<thead>
						<tr>
							<th style="padding: 0 20px;" width="5%">序号</th>
							<th>姓名</th>
							<th>身份证件类型</th>
							<th>身份证件号码</th>
							<th>职务</th>
							<th>任命方/委派方</th>
							<th>代表证期限至/任职截止日期</th>
						</tr>
						</thead>
					</table>


					<div class="light-info mt10 center pos-rel">
						<i class="flex-icon" id="table_cydwxx_icon"></i>成员单位信息(<span id="cydwxx">0</span>)
					</div>
					<table id="table_cydwxx" style="width:100%!important" class="table-row nowrap"
					       width="100%" cellpadding="0" cellspacing="0" border="0">
						<thead>
						<tr>
							<th style="padding: 0 20px;" width="5%">序号</th>
							<th>姓名</th>
							<th>身份证件类型</th>
							<th>身份证件号码</th>
							<th>所在部门</th>
							<th>任职起始日期</th>
							<th>离职日期</th>
							<th>资格证书名称</th>
							<th>资格证书颁发日期</th>
							<th>资格证书颁发部门</th>
						</tr>
						</thead>
					</table>


					<div class="light-info mt10 center pos-rel">
						<i class="flex-icon" id="table_frbgxx_icon"></i>法人变更信息(<span id="frbgxx">0</span>)
					</div>

					<table style="width:100%!important" id="table_frbgxx" class="table-row nowrap"
					       width="100%" cellpadding="0" cellspacing="0" border="0">
						<thead>
						<tr>
							<th style="padding: 0 20px;" width="5%">序号</th>
							<th>变更事项</th>
							<th>变更原因</th>
							<th>变更前内容</th>
							<th>变更后内容</th>
							<th>变更核准日期</th>
						</tr>
						</thead>

					</table>
				</div>

			</div>
		</div>
	</div>
</div>
<jsp:include page="../../common/common.jsp"/>
<script src="<c:url value='/js/business/dataquery/frDjjbxx_main.js'/>"></script>
</body>
</html>
