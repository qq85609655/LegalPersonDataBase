<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>公共数据法人库</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
	<meta charset="utf-8">
	<link rel="stylesheet" href="/css/system.css">
	<link rel="stylesheet" href="/css/vendor/dataTables.bootstrap.min.css">
	<link rel="stylesheet" href="/js/lib/jquerymultiselect/jquery.multiselect.css">
	<link rel="stylesheet" href="/js/lib/layer/skin/layer.css">
	<link rel="stylesheet" href="/css/style.css">
	<script src="/js/lib/require.js"></script>
	<script src="/js/config.js"></script>
	<script type="text/javascript" src="/js/lib/jquery/jquery-1.12.3.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$('.tabbale:gt(0)').hide();
		$('.basemsg-tab a').click(function(){
			$(this).addClass("current").siblings().removeClass();
			var content_idnex = $('.basemsg-tab a').index(this);
			$('.tabbale').eq(content_idnex).show().siblings().hide();

		});
	});
	</script>
	<style type="text/css">
		.iframe-wrap{
				padding-right:0 !important
			}
		.basemsg-tab{width: 830px;}
		.basemsg-tab a{width: 180px;margin-top: 10px;}
		.form-panel{margin-right: 0px;}
	</style>
</head>
<body style="background-color: #f4f4f4">
<div class="base-msg-search">
	<div class="basemsg-tab">
		<a class="current" href="javascript:void(0);">国税税务交费情况</a>
		<a href="javascript:void(0);">地税税务交费情况</a>
		<a href="javascript:void(0);">纳税非正常户认定情况</a>
		<a href="javascript:void(0);">船东互保情况</a>
		<a href="javascript:void(0);">用电缴费情况</a>
		<a href="javascript:void(0);">无线电频率占用费缴费情况</a>
		<a href="javascript:void(0);">社保公积金情况</a>
	</div>
</div>
<div><!-- 内容区域开始 -->
<!---------------------------------------------------------------------->
<div class="tabbale iframe-wrap" data-component="tab">
	<div class="form-panel">
		<div class="title">国税交费情况</div>
		<form id="search_form0" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="col-5 item-name text-right">法人名称：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" name="frmc" class="ipt-txt" placeholder="可输入法人名称(支持模糊查询)">
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="col-3 item-name text-right">国税实缴税额：</label>
						<div class="col-6">
							<div class="ipt-box col-575">
								<input type="text" name="NationalTaxL" id="NationalTaxL"class="ipt-txt" placeholder="单位(元)">
							</div>
							<span class="col-05 item-line">-</span>
							<div class="ipt-box col-575">
								<input type="text" name="NationalTaxH" id="NationalTaxH"class="ipt-txt clx" placeholder="单位(元)">
							</div>
						</div>
					</div>

				</div>
				<div class="center">
					<input type="button" id="search0" value="查询" class="btn mr20">
					<input type="reset" id="reset0" value="重置" class="btn mr20">
				</div>
			</div>
		</form>
		<div class="form-panel pd15">
			<table id="search_table0" class="table-row nowrap" width="100%">
				<thead>
				<tr>
					<th  style="padding: 0 20px;" width="7%">序号</th>
					<th>法人名称</th>
					<th>税所属期</th>
					<th>国税应缴税额(元)</th>
					<th>国税实缴税额(元)</th>
				</tr>
				</thead>
			</table>
		</div>
	</div>
</div>


<div class="tabbale iframe-wrap" data-component="tab">
	<div class="form-panel">
		<div class="title">地税交费情况</div>
		<form id="search_form1" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="col-5 item-name text-right">法人名称：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" name="frmc" class="ipt-txt" placeholder="可输入法人名称(支持模糊查询)">
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="col-3 item-name text-right">地税实缴金额：</label>
						<div class="col-6">
							<div class="ipt-box col-575">
								<input type="text" name="ProvincialTaxL" id="ProvincialTaxL" class="ipt-txt" placeholder="单位(元)">
							</div>
							<span class="col-05 item-line">-</span>
							<div class="ipt-box col-575">
								<input type="text" name="ProvincialTaxH" id="ProvincialTaxH" class="ipt-txt clx" placeholder="单位(元)">
							</div>
						</div>
					</div>
				</div>
				<div class="center">
					<input type="button" id="search1" value="查询" class="btn mr20">
					<input type="reset" id="reset1" value="重置" class="btn mr20">
				</div>
			</div>
		</form>
		<div class="form-panel pd15">
			<table id="search_table1" class="table-row nowrap" width="100%">
				<thead>
				<tr>
					<th  style="padding: 0 20px;" width="7%">序号</th>
					<th>法人名称</th>
					<th>税款所属期起</th>
					<th>税款所属期止</th>
					<th>地税实缴税额(元)</th>
				</tr>
				</thead>
			</table>
		</div>
	</div>
</div>
<!---------------------------------------------------------------------->
<div class="tabbale iframe-wrap" data-component="tab">
	<div class="form-panel">
		<div class="title">纳税非正常户认定情况</div>
		<form id="search_form2" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">法人名称：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="ShareholderName" value=""
								       placeholder="可输入法人名称(支持模糊查询)">
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="col-3 item-name text-right">纳税人识别号：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" name="TaxID" class="ipt-txt" placeholder="可输入纳税人识别号">
							</div>
						</div>
					</div>
				</div>
				<div class="center">
					<input type="button" id="search2" value="查询" class="btn mr20">
					<input type="reset" id="reset2" value="重置" class="btn mr20">
				</div>
			</div>
		</form>
		<div class="form-panel pd15">
			<table id="search_table2" class="table-row nowrap" width="100%">
				<thead>
				<tr>
					<th  style="padding: 0 20px;" width="7%">序号</th>
					<th>法人名称</th>
					<th>纳税人识别号</th>
					<th>税务登记日期（国）</th>
					<th>非正常户认定日期（国）</th>
					<th>税务登记日期（地）</th>
					<th>非正常户认定日期（地）</th>
				</tr>
				</thead>
			</table>
		</div>
	</div>
</div>
<!---------------------------------------------------------------------->
<div class="tabbale iframe-wrap" data-component="tab">
	<div class="form-panel">
		<div class="title">船东互保情况</div>
		<form id="search_form3" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">互保船名：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="BoatName" value=""
								       placeholder="可输入船名(支持模糊查询)">
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-3">被保人：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="ProtectedName" value=""
								       placeholder="可输入被保人(支持模糊查询)">
							</div>
						</div>
					</div>
				</div>
				<div class="center">
					<input type="button" id="search3" value="查询" class="btn mr20">
					<input type="reset" id="reset3" value="重置" class="btn mr20">
				</div>
			</div>
		</form>
		<div class="form-panel pd15">
			<table id="search_table3" class="table-row nowrap" width="100%">
				<thead>
				<tr>
					<th  style="padding: 0 20px;" width="7%">序号</th>
					<th>法人名称</th>
					<th>投保单号</th>
					<th>互保船名</th>
					<th>保险起期</th>
					<th>保险止期</th>
					<th>被保人</th>
					<th>受益人</th>
				</tr>
				</thead>
			</table>
		</div>
	</div>
</div>
<!---------------------------------------------------------------------->
<div class="tabbale iframe-wrap" data-component="tab">
	<div class="form-panel">
		<div class="title">用电缴费情况</div>
		<form id="search_form4" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">单位名称：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="DeptName" value=""
								       placeholder="可输入单位名称(支持模糊查询)">
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-3">电力户号：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="Num" value="" placeholder="可输入电力户号">
							</div>
						</div>
					</div>
				</div>
				<div class="center">
					<input type="button" id="search4" value="查询" class="btn mr20">
					<input type="reset" id="reset4" value="重置" class="btn mr20">
				</div>
			</div>
		</form>
		<div class="form-panel pd15">
			<table id="search_table4" class="table-row nowrap" width="100%">
				<thead>
				<tr>
					<th  style="padding: 0 20px;" width="7%">序号</th>
					<th>法人名称</th>
					<th>单位名称</th>
					<th>电力户号</th>
					<th>用电量(度)</th>
					<th>用电金额(元)</th>
					<th>交费日期</th>
					<th>交费金额(元)</th>
					<th>欠电量(度)</th>
					<th>电费欠费时段</th>
				</tr>
				</thead>
			</table>
		</div>
	</div>
</div>
<!---------------------------------------------------------------------->
<div class="tabbale iframe-wrap" data-component="tab">
	<div class="form-panel">
		<div class="title">无线电频率占用费缴费情况</div>
		<form id="search_form5" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="col-5 item-name text-right">法人名称：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" name="frmc" class="ipt-txt" placeholder="可输入法人名称(支持模糊查询)">
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-3">单位名称：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="DeptNamewxd" value=""
								       placeholder="可输入单位名称(支持模糊查询)">
							</div>
						</div>
					</div>
				</div>
				<div class="center">
					<input type="button" id="search5" value="查询" class="btn mr20">
					<input type="reset" id="reset5" value="重置" class="btn mr20">
				</div>
			</div>
		</form>
		<div class="form-panel pd15">
			<table id="search_table5" class="table-row nowrap" width="100%">
				<thead>
				<tr>
					<th  style="padding: 0 20px;" width="7%">序号</th>
					<th>法人名称</th>
					<th>单位名称</th>
					<th>缴费年度</th>
					<th>应缴费额（元）</th>
					<th>已缴费额（元）</th>
				</tr>
				</thead>
			</table>
		</div>
	</div>
</div>



<div class="tabbale iframe-wrap" data-component="tab">
	<div class="form-panel">
		<div class="title">社保公积金情况</div>
		<form id="search_form6" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="col-5 item-name text-right">法人名称：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" name="frmc" class="ipt-txt" placeholder="可输入法人名称(支持模糊查询)">
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-3">信用代码/注册号：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="tyxydm" value=""
								       placeholder="可输入信用代码/注册号">
							</div>
						</div>
					</div>
				</div>
				<div class="center">
					<input type="button" id="search6" value="查询" class="btn mr20">
					<input type="reset" id="reset6" value="重置" class="btn mr20">
				</div>
			</div>
		</form>
	<div class="form-panel pd15">
			<table id="search_table6" class="table-row nowrap" width="100%">
				<thead>
				<tr>
					<th  style="padding: 0 20px;" width="7%">序号</th>
					<th>法人名称</th>
					<th>统一信用代码/注册号</th>
					<th>养老保险缴存人数</th>
					<th>医保缴存人数</th>
					<th>生育缴存人数</th>
					<th>工伤保险缴存人数</th>
					<th>失业保险缴存人数</th>
					<th>公积金缴存人数</th>
				</tr>
				</thead>
			</table>
		</div>
</div>
</div>


<!-- 内容区域结束 -->


<script src="/js/search/TaxSearch/taxsearch.js"></script>
</body>
</html>
