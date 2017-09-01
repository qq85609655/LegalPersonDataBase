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
	<script src="/js/lib/require.js"></script>
	<script src="/js/config.js"></script>
	<link rel="stylesheet" href="/css/style.css">
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
		<a class="current" href="javascript:void(0);">基本资产情况汇总</a>
		<a href="javascript:void(0);">股东及出资信息</a>
		<a href="javascript:void(0);">股权变更情况</a>
		<a href="javascript:void(0);">股权出质情况</a>
		<a href="javascript:void(0);">股权冻结情况</a>
		<a href="javascript:void(0);">不动产查封信息</a>
		<a href="javascript:void(0);">动产抵押信息</a>
		<a href="javascript:void(0);">无形资产-知识产权信息</a>
		<a href="javascript:void(0);">土地使用权信息</a>
		<a href="javascript:void(0);">无形资产-采矿权</a>
		<a href="javascript:void(0);">无形资产-林业使用权</a>
		<a href="javascript:void(0);">其他资产-生物资产</a>
	</div>
</div>
	<div>  <!-- 内容区域开始 -->
	<!-------------------------------------------------------------->
	<div class="tabbale iframe-wrap" data-component="tab">
		<div class="form-panel">
			<div class="title">基本资产情况汇总</div>
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
							<label class="col-3 item-name text-right">注册资本：</label>
							<div class="col-6">
								<div class="ipt-box col-5">
									<input type="text" name="assetL" id="assetL" class="ipt-txt" id="assetL" placeholder="单位(万元)">
								</div>
								<span class="col-05 item-line">-</span>
								<div class="ipt-box col-575">
									<input type="text" name="assetH" id="assetH" class="ipt-txt clx" id="assetH" placeholder="单位(万元)">
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
						<th style="padding: 0 20px;" width="7%">序号</th>
						<th>法人名称</th>
						<th>注册资本(万元)</th>
						<th>车辆数量</th>
						<th>房屋数量</th>
						<th>拖拉机数量</th>
						<th>船舶数量</th>
					</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>
	<!-------------------------------------------------------------->
<div class="tabbale iframe-wrap" data-component="tab">
	<div class="form-panel">
		<div class="title">股东及出资信息</div>
		<form id="search_form2" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">股东名称：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="ShareholderName" value=""
								       placeholder="可输入股东名称(支持模糊查询)">
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="col-3 item-name text-right">认缴出资额：</label>
						<div class="col-6">
							<div class="ipt-box col-5">
								<input type="text" name="SoldL" class="ipt-txt" id="SoldL" placeholder="单位(万元)">
							</div>
							<span class="col-05 item-line">-</span>
							<div class="ipt-box col-575">
								<input type="text" name="SoldH" class="ipt-txt clx" id="SoldH" placeholder="单位(万元)">
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
					<th>股东名称</th>
					<th>认缴出资额(万元)</th>
					<th>认缴出资比例</th>
					<th>认缴出资时间</th>
					<th>实缴出资额(万元)</th>
					<th>实缴出资比例</th>
				</tr>
				</thead>
			</table>
		</div>
	</div>
</div>

<!---------------------------------------------------------------------->
<div class="tabbale iframe-wrap" data-component="tab">
	<div class="form-panel">
		<div class="title">股权变更情况</div>
		<form id="search_form3" class="form-box mb5">
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
						<label class="item-name col-3">投资人：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="InvestName" value=""
								       placeholder="可输入投资人名称(支持模糊查询)">
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
					<th>投资人</th>
					<th>股权转让额(万元)</th>
					<th>转让前股权比例</th>
					<th>转让后股权比例</th>
					<th>股权转让日期</th>
				</tr>
				</thead>
			</table>
		</div>
	</div>
</div>

<!---------------------------------------------------------------------->
<div class="tabbale iframe-wrap" data-component="tab">
	<div class="form-panel">
		<div class="title">股权出质情况</div>
		<form id="search_form4" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">股权出质人：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="SOutName" value=""
								       placeholder="可输入出质人名称(支持模糊查询)">
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-3">股权质权人：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="SInName" value=""
								       placeholder="可输入质权人名称(支持模糊查询)">
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
					<th>股权出质人</th>
					<th>股权质权人</th>
					<th>股权出质数额(万元)</th>
					<th>股权出质登记日期</th>
				</tr>
				</thead>
			</table>
		</div>
	</div>
</div>

<!---------------------------------------------------------------------->
<div class="tabbale iframe-wrap" data-component="tab">
	<div class="form-panel">
		<div class="title">股权冻结情况</div>
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
						<label class="item-name col-3">冻结被执行人：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="FrozenName" value=""
								       placeholder="可输入被执行人名称(支持模糊查询)">
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
					<th>股权冻结执行法院</th>
					<th>股权冻结执行裁定书文号</th>
					<th>股权冻结执行事项</th>
					<th>股权冻结被执行人</th>
					<th>股权冻结期限自</th>
					<th>股权冻结期限至</th>
				</tr>
				</thead>
			</table>
		</div>
	</div>
</div>

<!---------------------------------------------------------------------->

<div class="tabbale iframe-wrap" data-component="tab">
	<div class="form-panel">
		<div class="title">不动产查封信息</div>
		<form id="search_form6" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">房屋所有权人：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="HouseOwnerName" value=""
								       placeholder="可输入所有权人名称(支持模糊查询)">
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-3">房屋查封文号：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="HouseDepNum" value=""
								       placeholder="可输入查封文号">
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
					<th>房屋所有权人</th>
					<th>房屋所有权登记时间</th>
					<th>房屋查封文号</th>
					<th>房屋查封申请日期</th>
					<th>申请房屋查封单位</th>
					<th>查封状态</th>
				</tr>
				</thead>
			</table>
		</div>
	</div>
</div>

<!---------------------------------------------------------------------->
<div class="tabbale iframe-wrap" data-component="tab">
	<div class="form-panel">
		<div class="title">动产抵押信息</div>
		<form id="search_form7" class="form-box mb5">
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
						<label class="item-name col-3">抵押人名称：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="DepositName" value=""
								       placeholder="可输入抵押人名称(支持模糊查询)">
							</div>
						</div>
					</div>


				</div>
				<div class="center">
					<input type="button" id="search7" value="查询" class="btn mr20">
					<input type="reset" id="reset7" value="重置" class="btn mr20">
				</div>
			</div>
		</form>
		<div class="form-panel pd15">
			<table id="search_table7" class="table-row nowrap" width="100%">
				<thead>
				<tr>
					<th  style="padding: 0 20px;" width="7%">序号</th>
					<th>法人名称</th>
					<th>抵押人名称</th>
					<th>抵押是否失效</th>
					<th>抵押物</th>
					<th>抵押日期</th>
					<th>抵押金额(万元)</th>
				</tr>
				</thead>
			</table>
		</div>
	</div>
</div>

<!---------------------------------------------------------------------->
<div class="tabbale iframe-wrap" data-component="tab">
	<div class="form-panel">
		<div class="title">无形资产-知识产权信息</div>
		<form id="search_form8" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">知识产权出质人名称：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="OuterName" value=""
								       placeholder="可输入出质人名称(支持模糊查询)">
							</div>
						</div>
					</div>
					<!-- 
					<div class="col-4">
						<label class="item-name col-3">版权登记号：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="RegisteNo" value="" placeholder="可输入登记号">
							</div>
						</div>
					</div> -->
					<div class="col-6">
						<label class="item-name col-3">作品名称：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="ProduceName" value=""
								       placeholder="可输入作品名称(支持模糊查询)">
							</div>
						</div>
					</div>
				</div>
				<div class="center">
					<input type="button" id="search8" value="查询" class="btn mr20">
					<input type="reset" id="reset8" value="重置" class="btn mr20">
				</div>
			</div>
		</form>
		<div class="form-panel pd15">
			<table id="search_table8" class="table-row nowrap" width="100%">
				<thead>
				<tr>
					<th  style="padding: 0 20px;" width="7%">序号</th>
					<th>法人名称</th>
					<th>知识产权出质人</th>
					<th>版权登记号</th>
					<th>作品名称</th>
					<th>作品类别</th>
					<th>版权登记日期</th>
				</tr>
				</thead>
			</table>
		</div>
	</div>
</div>

<!---------------------------------------------------------------------->
<div class="tabbale iframe-wrap" data-component="tab">
	<div class="form-panel">
		<div class="title">土地使用权信息</div>
		<form id="search_form9" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">使用权所有者名称：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="UserName" value=""
								       placeholder="可输入所有者名称(支持模糊查询)">
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-3">土地使用权登记日期：</label>
						<div class="col-6">
							<div class="ipt-box col-575">
								<input type="text" class="ipt-txt" style="cursor: pointer;"
								       onclick="laydate()"
								       readonly="readonly" id="Use_Date_Start" name="Use_Date_Start" value=""/>
							</div>
							<span class="item-line col-05">-</span>
							<div class="ipt-box col-575">
								<input type="text" class="ipt-txt" style="cursor: pointer;"
								       onclick="laydate()"
								       readonly="readonly" id="Use_Date_End" name="Use_Date_End" value=""/>
							</div>
						</div>
					</div>
				</div>
				<div class="center">
					<input type="button" id="search9" value="查询" class="btn mr20">
					<input type="reset" id="reset9" value="重置" class="btn mr20">
				</div>
			</div>
		</form>
		<div class="form-panel pd15">
			<table id="search_table9" class="table-row nowrap" width="100%">
				<thead>
				<tr>
					<th  style="padding: 0 20px;" width="7%">序号</th>
					<th>法人名称</th>
					<th>使用权所有者名称</th>
					<th>土地使用权登记日期</th>
					<th>土地使用权使用年限</th>
				</tr>
				</thead>
			</table>
		</div>
	</div>
</div>

<!---------------------------------------------------------------------->
<div class="tabbale iframe-wrap" data-component="tab">
	<div class="form-panel">
		<div class="title">无形资产-采矿权</div>
		<form id="search_form10" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">使用权所有者名称：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="MontOwnerName" value=""
								       placeholder="可输入所有者名称(支持模糊查询)">
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-3">采矿权矿山名称：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="MontName" value=""
								       placeholder="可输入矿山名称(支持模糊查询)">
							</div>
						</div>
					</div>
				</div>
				<div class="center">
					<input type="button" id="search10" value="查询" class="btn mr20">
					<input type="reset" id="reset10" value="重置" class="btn mr20">
				</div>
			</div>
		</form>	
		<div class="form-panel pd15">
			<table id="search_table10" class="table-row nowrap" width="100%">
				<thead>
				<tr>
					<th  style="padding: 0 20px;" width="7%">序号</th>
					<th>法人名称</th>
					<th>使用权所有者名称</th>
					<th>采矿权证号</th>
					<th>采矿权矿山名称</th>
					<th>年开采规模</th>
					<th>有效起始日期</th>
					<th>有效到期日期</th>
				</tr>
				</thead>
			</table>
		</div>
	</div>
</div>

<!---------------------------------------------------------------------->

<div class="tabbale iframe-wrap" data-component="tab">
	<div class="form-panel">
		<div class="title">无形资产-林业使用权</div>
		<form id="search_form11" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">使用权所有者名称：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="ForestUserName" value=""
								       placeholder="可输入所有者名称(支持模糊查询)">
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-3">小地名：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="PlaceName" value=""
								       placeholder="可输入小地名名称(支持模糊查询)">
							</div>
						</div>
					</div>
				</div>
				<div class="center">
					<input type="button" id="search11" value="查询" class="btn mr20">
					<input type="reset" id="reset11" value="重置" class="btn mr20">
				</div>
			</div>
		</form>	
		<div class="form-panel pd15">
			<table id="search_table11" class="table-row nowrap" width="100%">
				<thead>
				<tr>
					<th  style="padding: 0 20px;" width="7%">序号</th>
					<th>法人名称</th>
					<th>使用权所有者名称</th>
					<th>小地名</th>
					<th>山林使用期</th>
					<th>山林终止期</th>
				</tr>
				</thead>
			</table>
		</div>
	</div>
</div>

<!---------------------------------------------------------------------->
<div class="tabbale iframe-wrap" data-component="tab">
	<div class="form-panel">
		<div class="title">其他资产-生物资产</div>
		<form id="search_form12" class="form-box mb5">
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
						<label class="item-name col-3">养殖场名称：</label>
						<div class="col-6">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="BirthName" value=""
								       placeholder="可输入养殖场名称(支持模糊查询)">
							</div>
						</div>
					</div>


				</div>
				<div class="center">
					<input type="button" id="search12" value="查询" class="btn mr20">
					<input type="reset" id="reset12" value="重置" class="btn mr20">
				</div>
			</div>
		</form>
		<div class="form-panel pd15">
			<table id="search_table12" class="table-row nowrap" width="100%">
				<thead>
				<tr>
					<th  style="padding: 0 20px;" width="7%">序号</th>
					<th>法人名称</th>
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

<!---------------------------------------------------------------------->
	</div><!-- 内容区域结束 -->


<script src="/js/search/AssetSearch/assetsearch.js"></script>
</body>
</html>
