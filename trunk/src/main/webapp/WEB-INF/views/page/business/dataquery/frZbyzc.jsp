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
	<title>法人资本与资产信息</title>
	<style type="text/css">
		.dataTables_scrollHeadInner {
			width: 100% !important;
		}
	</style>
</head>
<body>
<jsp:include page="../../common/header.jsp?ref=detail"/>
<input type="hidden" id="frwybs" value="${frwybs}"/>
<input type="hidden" id="errormsg" name="errormsg" value="${zbyzc['error']}">
<div class="iframe-wrap bg-white">
	<div class="pd15">
		<div class="reg-caption">
			<div class="title clearfix">
				<span class="name fl mr5">${zbyzc['ztdj'].frmc}</span>
				<span class="icon-rectangle green fl mr10">${zbyzc['ztdj'].cxzt}</span>
				
				<%-- <c:if test="${zbyzc['ztdj'].cxzt == '存续'}">
					<span class="icon-rectangle green fl mr10">存续</span>
				</c:if>
				<c:if test="${zbyzc['ztdj'].cxzt == '注销'}">
					<span class="icon-rectangle gray fl mr10">注销</span>
				</c:if>
				<c:if test="${zbyzc['ztdj'].cxzt == '个转企'}">
					<span class="icon-rectangle blue fl mr10">个转企</span>
				</c:if>
				<c:if test="${zbyzc['ztdj'].cxzt == '被列入经营异常名录和严重违法失信（黑名单）'}">
					<span class="icon-rectangle red fl mr10">被列入经营异常名录和严重违法失信（黑名单）</span>
				</c:if> --%>
			</div>
			<p>
				统一社会信用代码/注册号：${zbyzc['ztdj'].tyxydm}
			</p>
			<c:if test="${not empty zbyzc['ztdj'].datakeycontent}">
				<span style="font-size: 14px;color:#055486;float: right;margin-top: -47px;">
				<a href="/data/relationnetall/relationShow?priPID=${zbyzc['ztdj'].datakeycontentForEncode}" target="_blank"><input type="button" class="js-relation btn mr20"  value="关系网查询"  data-layout="circular" style="border: 0px;background: #43a8e8"></a></span>
			</c:if>
		</div>
		<div class="tabbale">
			<div class="tab-header type-tab person-tab">
				<ul class="clearfix">
					<li ><span class="tab-item"><a
						href="<c:url value='/data/frdetail/djjbxx/${frwybs}'/>">基本信息<!-- （<span id="jbxx_Nm">0</span>） --></a></span>
					</li>
					<li class="tab-selected"><span class="tab-item"><a
						href="<c:url value='/data/frdetail/zbyzc/${frwybs}'/>">资本与资产<!-- （<span id="zbzc_Nm">0</span>） --></a></span>
					</li>
					<li ><span class="tab-item"><a href="<c:url value='/data/frdetail/admission/${frwybs}'/>">许可、资质与荣誉<!-- （<span
						id="xkzz_Nm">0</span>） --></a></span>
					</li>
					<li ><span class="tab-item"><a href="<c:url value='/data/frdetail/tax/${frwybs}'/>">纳税、参保与缴费<!-- （<span
						id="nscb_Nm">0</span>） --></a></span>
					</li>
					<li ><span class="tab-item"><a href="<c:url value='/data/frdetail/produce/${frwybs}'/>">生产经营<!-- （<span
						id="scjy_Nm">0</span>） --></a></span>
					</li>
					<li ><span class=""><a
						href="<c:url value='/data/frdetail/lawenforce/${frwybs}'/>">行政执法<!-- （<span
						id="xzzf_Nm">0</span>） --></a></span>
					</li>
					<li ><span class="tab-item"><a href="<c:url value='/data/frdetail/lawinfo/${frwybs}'/>">司法信息<!-- （<span
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
						<i id="table_zcqkhz_icon" class="flex-icon"></i>基本资产情况汇总(<span id="zcqkhz">0</span>)
					</div>
					<table style="width:100%!important" id="table_zcqkhz" class="table-row  nowrap"
					       width="100%" cellpadding="0" cellspacing="0" border="0">
						<thead>
						<tr>
							<th  style="padding: 0 20px;" width="5%">序号</th>
							<th>注册资本(万元)</th>
							<th>车辆数量</th>
							<th>房屋数量</th>
							<th>拖拉机数量</th>
							<th>船舶数量</th>
						</tr>
						</thead>
					</table>

					<div class="light-info mt10 center pos-rel">
						<i id="table_gdcz_icon" class="flex-icon"></i>股东及出资信息(<span id="gdcz">0</span>)
					</div>
					<table style="width:100%!important" id="table_gdcz" class="table-row  nowrap"
					       width="100%" cellpadding="0" cellspacing="0" border="0">
						<thead>
						<tr>
							<th  style="padding: 0 20px;" width="5%">序号</th>
							<th>股东名称</th>
							<th>认缴出资额(万元)</th>
							<th>认缴出资比例</th>
							<th>认缴出资时间</th>
							<th>实缴出资额(万元)</th>
							<th>实缴出资比例</th>
						</tr>
						</thead>
					</table>

					<div class="light-info mt10 center pos-rel">
						<i id="table_gqbg_icon" class="flex-icon"></i>股权变更情况(<span id="gqbg">0</span>)
					</div>
					<table style="width:100%!important" id="table_gqbg" class="table-row  nowrap"
					       width="100%" cellpadding="0" cellspacing="0" border="0">
						<thead>
						<tr>
							<th  style="padding: 0 20px;" width="5%">序号</th>
							<th>投资人</th>
							<th>股权转让额(万元)</th>
							<th>转让前股权比例</th>
							<th>转让后股权比例</th>
							<th>股权转让日期</th>
						</tr>
						</thead>
					</table>


					<div class="light-info mt10 center pos-rel">
						<i id="table_gqcz_icon" class="flex-icon"></i>股权出质情况(<span id="gqcz">0</span>)
					</div>
					<table style="width:100%!important" id="table_gqcz" class="table-row  nowrap"
					       width="100%" cellpadding="0" cellspacing="0" border="0">
						<thead>
						<tr>
							<th  style="padding: 0 20px;" width="5%">序号</th>
							<th>股权出质人</th>
							<th>股权质权人</th>
							<th>股权出质数额(万元)</th>
							<th>股权出质登记日期</th>
						</tr>
						</thead>
					</table>

					<div class="light-info mt10 center pos-rel">
						<i id="table_gqdj_icon" class="flex-icon"></i>股权冻结情况(<span id="gqdj">0</span>)
					</div>
					<table style="width:100%!important" id="table_gqdj" class="table-row  nowrap"
					       width="100%" cellpadding="0" cellspacing="0" border="0">
						<thead>
						<tr>
							<th  style="padding: 0 20px;" width="5%">序号</th>
							<th>股权冻结执行法院</th>
							<th>股权冻结执行裁定书文号</th>
							<th>股权冻结执行事项</th>
							<th>股权冻结被执行人</th>
							<th>股权冻结期限自</th>
							<th>股权冻结期限至</th>
						</tr>
						</thead>
					</table>

					<div class="light-info mt10 center pos-rel">
						<i id="table_bdccf_icon" class="flex-icon"></i>不动产查封信息(<span id="bdccf">0</span>)
					</div>
					<table style="width:100%!important" id="table_bdccf" class="table-row  nowrap"
					       width="100%" cellpadding="0" cellspacing="0" border="0">
						<thead>
						<tr>
							<th  style="padding: 0 20px;" width="5%">序号</th>
							<th>房屋所有权人</th>
							<th>房屋所有权登记时间</th>
							<th>房屋查封文号</th>
							<th>房屋查封申请日期</th>
							<th>申请房屋查封单位</th>
							<th>查封状态</th>
						</tr>
						</thead>
					</table>

					<div class="light-info mt10 center pos-rel">
						<i id="table_dcdy_icon" class="flex-icon"></i>动产抵押信息(<span id="dcdy">0</span>)
					</div>
					<table style="width:100%!important" id="table_dcdy" class="table-row  nowrap"
					       width="100%" cellpadding="0" cellspacing="0" border="0">
						<thead>
						<tr>
							<th  style="padding: 0 20px;" width="5%">序号</th>
							<th>抵押人名称</th>
							<th>抵押是否失效</th>
							<th>抵押物</th>
							<th>抵押日期</th>
							<th>抵押金额(万元)</th>
						</tr>
						</thead>
					</table>

					<div class="light-info mt10 center pos-rel">
						<i id="table_zscq_icon" class="flex-icon"></i>无形资产-知识产权信息(<span id="zscq">0</span>)
					</div>
					<table style="width:100%!important" id="table_zscq" class="table-row  nowrap"
					       width="100%" cellpadding="0" cellspacing="0" border="0">
						<thead>
						<tr>
							<th  style="padding: 0 20px;" width="5%">序号</th>
							<th>知识产权出质人</th>
							<th>版权登记号</th>
							<th>作品名称</th>
							<th>作品类别</th>
							<th>版权登记日期</th>
						</tr>
						</thead>
					</table>

					<div class="light-info mt10 center pos-rel">
						<i id="table_tdsyq_icon" class="flex-icon"></i>土地使用权信息(<span id="tdsyq">0</span>)
					</div>
					<table style="width:100%!important" id="table_tdsyq" class="table-row  nowrap"
					       width="100%" cellpadding="0" cellspacing="0" border="0">
						<thead>
						<tr>
							<th  style="padding: 0 20px;" width="5%">序号</th>
							<th>使用者名称</th>
							<th>土地使用权登记日期</th>
							<th>土地使用权使用年限</th>
						</tr>
						</thead>
					</table>

					<div class="light-info mt10 center pos-rel">
						<i id="table_ckq_icon" class="flex-icon"></i>无形资产-采矿权(<span id="ckq">0</span>)
					</div>
					<table style="width:100%!important" id="table_ckq" class="table-row  nowrap"
					       width="100%" cellpadding="0" cellspacing="0" border="0">
						<thead>
						<tr>
							<th  style="padding: 0 20px;" width="5%">序号</th>
							<th>使用权所有者名称</th>
							<th>采矿权证号</th>
							<th>采矿权矿山名称</th>
							<th>年开采规模</th>
							<th>有效起始日期</th>
							<th>有效到期日期</th>
						</tr>
						</thead>
					</table>

					<div class="light-info mt10 center pos-rel">
						<i id="table_lysyq_icon" class="flex-icon"></i>无形资产-林业使用权(<span id="lysyq">0</span>)
					</div>
					<table style="width:100%!important" id="table_lysyq" class="table-row  nowrap"
					       width="100%" cellpadding="0" cellspacing="0" border="0">
						<thead>
						<tr>
							<th  style="padding: 0 20px;" width="5%">序号</th>
							<th>使用权所有者名称</th>
							<th>小地名</th>
							<th>山林使用期</th>
							<th>山林终止期</th>
							<th>山林性质</th>
							<th>林种</th>
						</tr>
						</thead>
					</table>

					<div class="light-info mt10 center pos-rel">
						<i id="table_swzc_icon" class="flex-icon"></i>其他资产-生物资产(<span id="swzc">0</span>)
					</div>
					<table style="width:100%!important" id="table_swzc" class="table-row  nowrap"
					       width="100%" cellpadding="0" cellspacing="0" border="0">
						<thead>
						<tr>
							<th  style="padding: 0 20px;" width="5%">序号</th>
							<th>养殖场名称</th>
							<th>畜种</th>
							<th>存栏量</th>
							<th>商品畜存栏量</th>
							<th>仔畜存栏量</th>
							<th>母畜存栏量</th>
							<th>公畜存栏量</th>
						</tr>
						</thead>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="../../common/common.jsp"/>
<script src="<c:url
		value='/js/business/dataquery/frZbyzc_main.js'/>"></script>
</body>
</html>
