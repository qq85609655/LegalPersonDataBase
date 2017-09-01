<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title> 司法信息查询</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
	<meta charset="utf-8">
	<link rel="stylesheet" href="/css/system.css">
	<link rel="stylesheet" href="/css/vendor/dataTables.bootstrap.min.css">
	<link rel="stylesheet" href="/js/lib/jquerymultiselect/jquery.multiselect.css">
	<link rel="stylesheet" href="/js/lib/layer/skin/layer.css">
	<script src="/js/lib/require.js"></script>
	<script src="/js/config.js"></script>
	<link rel="stylesheet" href="/css/style.css">
	<script type="text/javascript" src="/js/lib/jquery/jquery-1.12.3.min.js"></script>
	<style type="text/css">
		.basemsg-tab{width: 830px;}
		.basemsg-tab a{width: 180px;margin-top: 10px;}
		.form-panel{margin-right: 0px;}
	</style>
	<script type="text/javascript">
	$(document).ready(function(){
		$('.tabbale:gt(0)').hide();
	});
	</script>
	
</head>
<body style="background-color: #f4f4f4">


<div class="base-msg-search">
		<div class="basemsg-tab">
			<a class="current mytab" href="javascript:;">案件信息</a>
			<a class="mytab" href="javascript:;">单位未履行生效裁判信息</a>
			<a class="mytab"  href="javascript:;">案件当事人信息</a>
			<a class="mytab" href="javascript:;">失信被执行人</a>
		</div>
</div>

<div class="tabbale iframe-wrap" data-component="tab" style="padding-right:0">
	<div class="form-panel">
		<div class="title">案件信息</div>
		<form id="ajxx_form" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">案件当事人名称：</label>
						<div class="col-7">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="ajdsrmc" placeholder="可输入案件当事人名称（支持模糊查询）"/>
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-5">案号：</label>
						<div class="col-7">
							<div class="ipt-box col-11">
								<input type="text" class="ipt-txt" name="ah" placeholder="可输入案号"/>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="center mt10">
				<input type="button" id="ajxx_search" value="查询" class="btn mr20">
				<input type="reset" id="ajxx_cancel" value="重置" class="btn mr20">
			</div>
		</form>
		<div class="form-panel pd15">
			<table id="ajxx_table" class="table-row nowrap" width="100%">
				<thead>
				<tr>
					<th style="padding: 0 20px;" width="7%">序号</th>
					<th>案件当事人名称</th>
					<th>案号</th>
					<th>案由</th>
					<th>结案日期</th>
					<th>判决结果</th>
					<th>生效日期</th>
				</tr>
				</thead>
			</table>
		</div>
	</div>
</div>


<div class="tabbale iframe-wrap" data-component="tab" style="padding-right:0">
	<div class="form-panel">
		<div class="title">单位未履行生效裁判信息</div>
		<form id="dwwlx_form" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">执行法院：</label>
						<div class="col-7">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="zxfy" placeholder="可输入执行法院（支持模糊查询）"/>
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-5">执行依据：</label>
						<div class="col-7">
							<div class="ipt-box col-11">
								<input type="text" class="ipt-txt" name="zxyj" placeholder="可输入执行依据（支持模糊查询）"/>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="center mt10">
				<input type="button" id="dwwlx_search" value="查询" class="btn mr20">
				<input type="reset" id="dwwlx_cancel" value="重置" class="btn mr20">
			</div>
		</form>
		<div class="form-panel pd15">
			<table id="dwwlx_table" class="table-row nowrap" width="100%">
				<thead>
				<tr>
					<th style="padding: 0 20px;" width="7%">序号</th>
					<th>执行法院</th>
					<th>执行依据</th>
					<th>执行案由</th>
					<th>履行时间</th>
					<th>未执行金额（元）</th>
					<th>未执行行为</th>
					<th>未执行物品</th>
				</tr>
				</thead>
			</table>
		</div>
	</div>
</div>


<div class="tabbale iframe-wrap" data-component="tab" style="padding-right:0">
	<div class="form-panel">
		<div class="title">案件当事人信息</div>
		<form id="ajdsrxx_form" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">当事人名称：</label>
						<div class="col-7">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="dsrmc" placeholder="可输入当事人名称（支持模糊查询）"/>
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-5">身份证件号码：</label>
						<div class="col-7">
							<div class="ipt-box col-11">
								<input type="text" id="ajdsrxx_sfzjhm" class="ipt-txt" name="sfzjhm" placeholder="可输入身份证件号码"/>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="center mt10">
				<input type="button" id="ajdsrxx_search" value="查询" class="btn mr20">
				<input type="reset" id="ajdsrxx_cancel" value="重置" class="btn mr20">
			</div>
		</form>
		<div class="form-panel pd15">
			<table id="ajdsrxx_table" class="table-row nowrap" width="100%">
				<thead>
				<tr>
					<th style="padding: 0 20px;" width="7%">序号</th>
					<th>当事人名称</th>
					<th>身份证件号码</th>
					<th>当事人类型</th>
					<th>数据来源部门</th>
					<th>诉讼地位</th>
				</tr>
				</thead>
			</table>
		</div>
	</div>
</div>


<div class="tabbale iframe-wrap" data-component="tab" style="padding-right:0">
	<div class="form-panel">
		<div class="title">失信被执行人</div>
		<form id="sxbzxr_form" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">被执行人名称：</label>
						<div class="col-7">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="bzxrmc"
								       placeholder="可输入被执行人名称（支持模糊查询）"/>
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-5">执行法院：</label>
						<div class="col-7">
							<div class="ipt-box col-11">
								<input type="text" class="ipt-txt" name="zxfy" placeholder="可输入执行法院（支持模糊查询）"/>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="center mt10">
				<input type="button" id="sxbzxr_search" value="查询" class="btn mr20">
				<input type="reset" id="sxbzxr_cancel" value="重置" class="btn mr20">
			</div>
		</form>
		<div class="form-panel pd15">
			<table id="sxbzxr_table" class="table-row nowrap" width="100%">
				<thead>
				<tr>
					<th style="padding: 0 20px;" width="7%">序号</th>
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


<script src="/js/search/LawInfoSearch/lawinfosearch.js"></script>
</body>
</html>
