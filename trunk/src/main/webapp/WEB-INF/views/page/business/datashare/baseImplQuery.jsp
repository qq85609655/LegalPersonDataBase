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
	<script src="/js/lib/require.js"></script>
	<script src="/js/config.js"></script>
	<meta charset="utf-8">
	<title>我的接口</title>
	<style type="text/css">
		.mr20 { margin-right: 20px; margin-left: 20px;}
	</style >
</head>
<body>
<div class="iframe-wrap bg-white">
	<div class="pd15">
		<div class="tabbale">
			<div class="tab-header type-tab person-tab">
				<ul class="clearfix">
					<li class="tab-selected">
						<span class=""><a href="<c:url value='/data/dataShare/baseImpl'/> ">法人相关接口查询</a></span>
					</li>
					<%-- <li class=""><span class="tab-item"><a
						href="<c:url value=''/>">税收相关接口查询</a></span>
					</li> --%>
				</ul>
		</div>		
</div>
<div class="form-panel">
		<form id="base_form" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">接口名称：</label>
						<div class="col-7">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="implName"
								       placeholder="请输入接口名称（支持模糊查询）"/>
							</div>
						</div>
					</div>
					
						<div class="center mt10">
							<input type="button" id="base_search" value="查询" class="btn mr20">
							<input type="reset" id="base_cancel" value="重置" class="btn mr20">
						</div>
					
				</div>
			</div>
		</form>
		<div class="tab-content mb20 mt10">
			<div class="tab-panel tab-panel-show">
				<div id="base_tab" class="">
					<div class="table-out">
						<table id="base_table" class="table-row nowrap" width="100%">
							<thead>
							<tr>
								<th width="5%">序号</th>
								<th>接口名称</th>
								<th >接口描述</th>
								<th >接口状态</th>
								<th>操作</th>
							</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="<c:url value='/js/business/datashare/baseImplQuery.js'/>"></script>
</body>
</html>
