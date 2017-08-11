﻿<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>法人高级查询</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<meta charset="utf-8">

<link rel="stylesheet"
	href="<c:url value='/css/vendor/dataTables.bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/css/credit/credit.css'/>">
<link rel="stylesheet" href="/css/style.css">
<script src="/js/lib/laydate/laydate.js" type="text/javascript"
	charset="utf-8"></script>
<script src="/js/lib/require.js"></script>
<script src="/js/config.js"></script>
</head>
<body>
	<div class="iframe-wrap">
		<div class="form-panel mb10">
			<form id="form_fr_high" class="form-box clearfix">
				<div class="form-list">
					<div class="form-item clearfix">
						<div class="col-4">
							<label class="col-6 item-name text-right">法人名称：</label>
							<div class="col-6">
								<input type="text" id="fr_name" class="form-control" name="frmc"
									placeholder="请输入法人名称（支持模糊查询）">
							</div>
						</div>
						<div class="col-4">
							<label class="col-6 item-name text-right">统一社会信用代码：</label>
							<div class="col-6">
								<input type="text" id="xy_code" class="form-control"
									name="tyxydm">
							</div>
						</div>
						<div class="col-4">
							<label class="col-4 item-name text-right" id="regist_state">登记状态：</label>
							<div class="col-6">
								<div class="ipt-box">
									<select id="" name="cxzt">
										<option value="">请选择</option>
										<c:forEach var="states" items="${registStates}" varStatus="rs">
											<option value="${states}">${states}</option>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="form-item clearfix">
						<div class="col-4">
							<label class="col-6 item-name text-right" id="fr_stye">法人类型：</label>
							<div class="col-6">
								<div class="ipt-box">
									<select id="" name="frfl">
										<option value="">请选择</option>
										<c:forEach var="sty" items="${frstyes}" varStatus="frs">
											<option value="${sty.frCode}">${sty.frContent}</option>						
										</c:forEach>
									</select>
								</div>
							</div>
						</div>

						<div class="col-4">
							<label class="col-6 item-name text-right">登记日期：</label>
							<div class="col-6">
								<div class="ipt-box col-575">
									<input type="text" class="ipt-txt" onclick="laydate()"
										id="fk_startTime" name="startTime">
								</div>
								<span class="col-05 item-line">-</span>
								<div class="ipt-box col-575">
									<input type="text" class="ipt-txt clx" onclick="laydate()"
										id="fk_endTime" name="endTime">
								</div>
							</div>
						</div>

						<div class="col-4">
							<label class="col-4 item-name text-right">来源部门：</label>
							<div class="col-6">
								<input type="text" id="source_dept" class="form-control"
									name="datasrdep">
							</div>	
						</div>
					</div>
					<div class="form-item clearfix">
						<div class="col-4">
							<label class="col-6 item-name text-right">法定代表人：</label>
							<div class="col-6">
								<input type="text" id="fd_fr_name" class="form-control"
									name="fddbr">
							</div>
						</div>

						<div class="col-4">
							<label class="col-6 item-name text-right">行业：</label>
							<div class="col-6 pos-rel">
								<input type="text" class="form-control" id="entOrgName" name="hydm" value=""
									readonly /> <input type="hidden"  id="entOrgName" name="hydmStr"/>
								<span class="add-icon" id="entSelectDept"> <i></i>
								</span>
							</div>
						</div>

						<div class="col-4">
							<label class="col-4 item-name text-right">注册资本：</label>
							<div class="col-6">
								<input type="text" id="zc_cast" class="form-control" name="zczb">
							</div>
						</div>
					</div>
					<div class="hx-searchForm-but center">
						<input id="entSearch" type="button" value="查询" class="btn mr20">
						<input id="entCancle" type="reset" value="重置" class="btn">
					</div>
				</div>
			</form>
		</div>

		<div class="form-panel pd15">
			<table id="tab_fr_high" class="table-row nowrap" width="100%">
				<thead>
					<tr>
						<th>序号</th>
						<th>登记状态</th>
						<th>统一社会信用代码/注册号</th>
						<th>法人名称</th>
						<th>法定代表人</th>
						<th>登记日期</th>
						<th>注册资本（万元）</th>
						<th>企业类型</th>
						<th>行业</th>
						<th>住所</th>
						<th>来源部门</th>
					</tr>
				</thead>
			</table>
		</div>
	</div>

	<script type="text/javascript">
		//laydate.skin("molv");//设置皮肤
		//部门下拉选择框内容加载
		window._CONFIG = {
			select_trade_url : '<c:url value="/data/frdetail/tradeTreeSelect"/>'
		}
	</script>
	<script src="<c:url value='/js/business/dataquery/frHighQuery.js'/>"></script>
</body>
</html>
