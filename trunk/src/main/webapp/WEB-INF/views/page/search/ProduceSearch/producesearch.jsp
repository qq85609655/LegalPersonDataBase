<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>生产经营查询</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
	<meta charset="utf-8">
	<link rel="stylesheet" href="/css/system.css">
	<link rel="stylesheet" href="/css/vendor/dataTables.bootstrap.min.css">
	<link rel="stylesheet" href="/js/lib/jquerymultiselect/jquery.multiselect.css">
	<link rel="stylesheet" href="/js/lib/layer/skin/layer.css">
	<script src="/js/lib/require.js"></script>
	<script src="/js/config.js"></script>
</head>
<body style="background-color: #f4f4f4">
<div class="tabbale iframe-wrap" data-component="tab" style="padding-right:0">
	<div class="form-panel">
		<div class="title">化学药品原料药制造</div>
		<form id="hxyp_form" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">企业名称/单位名称/人员名称：</label>
						<div class="col-7">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="dwmc"
								       placeholder="可输入企业名称（支持模糊查询）"/>
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-5">药品通用名：</label>
						<div class="col-7">
							<div class="ipt-box col-11">
								<input type="text" class="ipt-txt" name="wtjgtym" placeholder="可输入药品通用名称（支持模糊查询）"/>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="center mt10">
				<input type="button" id="hxyp_search" value="查询" class="btn mr20">
				<input type="reset" id="hxyp_cancel" value="重置" class="btn mr20">
			</div>
		</form>
		<div class="tab-content mb20 mt10">
			<div class="tab-panel tab-panel-show">
				<div id="hxyp_tab" class="">
					<div class="table-out">
						<table id="hxyp_table" class="table-row nowrap" width="100%">
							<thead>
							<tr>
								<th>序号</th>
								<th>企业名称/单位名称/人员名称</th>
								<th>委托加工药品通用名</th>
								<th>药品受委托加工数量</th>
								<th>药品加工委托方名称</th>
								<th>药品加工期限</th>
								<th>药品委托加工备案日期</th>
							</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



<div class="tabbale iframe-wrap" data-component="tab" style="padding-right:0">
	<div class="form-panel">
		<div class="title">医疗器械制造</div>
		<form id="ylqx_form" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">企业名称（委托方）：</label>
						<div class="col-7">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="qymcWt"
								       placeholder="可输入企业名称（支持模糊查询）"/>
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-5">委托生产产品名称：</label>
						<div class="col-7">
							<div class="ipt-box col-11">
								<input type="text" class="ipt-txt" name="wtsccpmc" placeholder="可输入产品名称（支持模糊查询）"/>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="center mt10">
				<input type="button" id="ylqx_search" value="查询" class="btn mr20">
				<input type="reset" id="ylqx_cancel" value="重置" class="btn mr20">
			</div>
		</form>
		<div class="tab-content mb20 mt10">
			<div class="tab-panel tab-panel-show">
				<div id="ylqx_tab" class="">
					<div class="table-out">
						<table id="ylqx_table" class="table-row nowrap" width="100%">
							<thead>
							<tr>
								<th>序号</th>
								<th>企业名称（委托方）</th>
								<th>生产许可/备案编号（委托方）</th>
								<th>委托生产产品名称</th>
								<th>产品注册号/备案号</th>
								<th>委托期限</th>
								<th>备案日期</th>
								<th>备案部门</th>
							</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



<div class="tabbale iframe-wrap" data-component="tab" style="padding-right:0">
	<div class="form-panel">
		<div class="title">印刷委托书备案信息</div>
		<form id="ysh_form" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">委托印刷书（刊）名：</label>
						<div class="col-7">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="wtyssm"
								       placeholder="可输入书（刊）名（支持模糊查询）"/>
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-5">出版单位（委托方）：</label>
						<div class="col-7">
							<div class="ipt-box col-11">
								<input type="text" class="ipt-txt" name="wtfcbdw" placeholder="可输入出版单位（支持模糊查询）"/>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="center mt10">
				<input type="button" id="ysh_search" value="查询" class="btn mr20">
				<input type="reset" id="ysh_cancel" value="重置" class="btn mr20">
			</div>
		</form>
		<div class="tab-content mb20 mt10">
			<div class="tab-panel tab-panel-show">
				<div id="ysh_tab" class="">
					<div class="table-out">
						<table id="ysh_table" class="table-row nowrap" width="100%">
							<thead>
							<tr>
								<th>序号</th>
								<th>委托印刷书的编号</th>
								<th>委托印刷书（刊）名</th>
								<th>出版单位（委托方）</th>
								<th>书(刊)印刷委托书创建时间</th>
								<th>出版单位办理时间</th>
								<th>印刷企业办理时间</th>
								<th>撤销委托书的时间</th>
							</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="tabbale iframe-wrap" data-component="tab" style="padding-right:0">
	<div class="form-panel">
		<div class="title">测绘与地理项目信息</div>
		<form id="chui_form" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">单位名称：</label>
						<div class="col-7">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="dwmc"
								       placeholder="可输入单位名称（支持模糊查询）"/>
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-5">项目名称：</label>
						<div class="col-7">
							<div class="ipt-box col-11">
								<input type="text" class="ipt-txt" name="xmmc" placeholder="可输入项目名称（支持模糊查询）"/>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="center mt10">
				<input type="button" id="chui_search" value="查询" class="btn mr20">
				<input type="reset" id="chui_cancel" value="重置" class="btn mr20">
			</div>
		</form>
		<div class="tab-content mb20 mt10">
			<div class="tab-panel tab-panel-show">
				<div id="chui_tab" class="">
					<div class="table-out">
						<table id="chui_table" class="table-row nowrap" width="100%">
							<thead>
							<tr>
								<th>序号</th>
								<th>单位名称</th>
								<th>项目名称</th>
								<th>委托单位</th>
								<th>项目类型</th>
								<th>项目开始时间</th>
								<th>项目完工时间</th>
								<th>项目金额（万元）</th>
								<th>项目备案时间</th>
							</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="tabbale iframe-wrap" data-component="tab" style="padding-right:0">
	<div class="form-panel">
		<div class="title">国家知识产权软科学研究计划项目信息</div>
		<form id="zscq_form" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">建设单位、单位名称：</label>
						<div class="col-7">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="dwmc"
								       placeholder="可输入建设单位、单位名称（支持模糊查询）"/>
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-5">项目名称：</label>
						<div class="col-7">
							<div class="ipt-box col-11">
								<input type="text" class="ipt-txt" name="xmmc" placeholder="可输入项目名称（支持模糊查询）"/>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="center mt10">
				<input type="button" id="zscq_search" value="查询" class="btn mr20">
				<input type="reset" id="zscq_cancel" value="重置" class="btn mr20">
			</div>
		</form>
		<div class="tab-content mb20 mt10">
			<div class="tab-panel tab-panel-show">
				<div id="zscq_tab" class="">
					<div class="table-out">
						<table id="zscq_table" class="table-row nowrap" width="100%">
							<thead>
							<tr>
								<th>序号</th>
								<th>建设单位、单位名称</th>
								<th>项目编号</th>
								<th>项目名称</th>
							</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="tabbale iframe-wrap" data-component="tab" style="padding-right:0">
	<div class="form-panel">
		<div class="title">交通建设项目信息</div>
		<form id="jtjs_form" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">项目名称：</label>
						<div class="col-7">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="xmmc"
								       placeholder="可输入项目名称（支持模糊查询）"/>
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-5">开工时间：</label>
						<div class="col-5">
							<div class="ipt-box col-575">
								<input type="text" class="ipt-txt" onclick="laydate()"
								       id="jtjs_startTime" name="startTime">
							</div>
							<span class="col-05 item-line">-</span>
							<div class="ipt-box col-575">
								<input type="text" class="ipt-txt clx" onclick="laydate()"
								       id="jtjs_endTime" name="endTime">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="center mt10">
				<input type="button" id="jtjs_search" value="查询" class="btn mr20">
				<input type="reset" id="jtjs_cancel" value="重置" class="btn mr20">
			</div>
		</form>
		<div class="tab-content mb20 mt10">
			<div class="tab-panel tab-panel-show">
				<div id="jtjs_tab" class="">
					<div class="table-out">
						<table id="jtjs_table" class="table-row nowrap" width="100%">
							<thead>
							<tr>
								<th>序号</th>
								<th>项目名称</th>
								<th>工程状态</th>
								<th>项目类型</th>
								<th>开工时间</th>
								<th>交工时间</th>
							</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="tabbale iframe-wrap" data-component="tab" style="padding-right:0">
	<div class="form-panel">
		<div class="title">重大产业项目信息</div>
		<form id="zdcy_form" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">项目名称：</label>
						<div class="col-7">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="xmmc"
								       placeholder="可输入项目名称（支持模糊查询）"/>
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-5">项目年份：</label>
						<div class="col-5">
							<div class="ipt-box col-575">
								<input type="text" class="ipt-txt" onclick="laydate({format: 'YYYY',istime: false})"
								       id="zdcy_startTime" name="startTime">
							</div>
							<span class="col-05 item-line">-</span>
							<div class="ipt-box col-575">
								<input type="text" class="ipt-txt clx"
								       onclick="laydate({format: 'YYYY',istime: false})"
								       id="zdcy_endTime" name="endTime">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="center mt10">
				<input type="button" id="zdcy_search" value="查询" class="btn mr20">
				<input type="reset" id="zdcy_cancel" value="重置" class="btn mr20">
			</div>
		</form>
		<div class="tab-content mb20 mt10">
			<div class="tab-panel tab-panel-show">
				<div id="zdcy_tab" class="">
					<div class="table-out">
						<table id="zdcy_table" class="table-row nowrap" width="100%">
							<thead>
							<tr>
								<th>序号</th>
								<th>项目名称</th>
								<th>行业地位</th>
								<th>项目年份</th>
								<th>产业项目开工时间</th>
								<th>竣工时间</th>
								<th>总用地</th>
							</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="tabbale iframe-wrap" data-component="tab" style="padding-right:0">
	<div class="form-panel">
		<div class="title">企业投资项目信息</div>
		<form id="qytz_form" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">建设项目名称：</label>
						<div class="col-7">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="jsxmmc"
								       placeholder="可输入建设项目名称（支持模糊查询）"/>
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-5">项目总投资：</label>
						<div class="col-5">
							<div class="ipt-box col-575">
								<input type="text" class="ipt-txt"
								       id="qytz_startNo" name="startNo">
							</div>
							<span class="col-05 item-line">-</span>
							<div class="ipt-box col-575">
								<input type="text" class="ipt-txt clx"
								       id="qytz_endNo" name="endNo">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="center mt10">
				<input type="button" id="qytz_search" value="查询" class="btn mr20">
				<input type="reset" id="qytz_cancel" value="重置" class="btn mr20">
			</div>
		</form>
		<div class="tab-content mb20 mt10">
			<div class="tab-panel tab-panel-show">
				<div id="qytz_tab" class="">
					<div class="table-out">
						<table id="qytz_table" class="table-row nowrap" width="100%">
							<thead>
							<tr>
								<th >序号</th>
								<th>建设项目名称</th>
								<th>主要建设内容及规模</th>
								<th>建设起始时间</th>
								<th>建设结束时间</th>
								<th>项目总投资（万元）</th>
							</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="tabbale iframe-wrap" data-component="tab" style="padding-right:0">
	<div class="form-panel">
		<div class="title">社会发展项目信息</div>
		<form id="shfz_form" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">项目名称：</label>
						<div class="col-7">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="xmmc"
								       placeholder="可输入项目名称（支持模糊查询）"/>
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-5">项目总投资：</label>
						<div class="col-5">
							<div class="ipt-box col-575">
								<input type="text" class="ipt-txt"
								       id="shfz_startNo" name="startNo">
							</div>
							<span class="col-05 item-line">-</span>
							<div class="ipt-box col-575">
								<input type="text" class="ipt-txt clx"
								       id="shfz_endNo" name="endNo">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="center mt10">
				<input type="button" id="shfz_search" value="查询" class="btn mr20">
				<input type="reset" id="shfz_cancel" value="重置" class="btn mr20">
			</div>
		</form>
		<div class="tab-content mb20 mt10">
			<div class="tab-panel tab-panel-show">
				<div id="shfz_tab" class="">
					<div class="table-out">
						<table id="shfz_table" class="table-row nowrap" width="100%">
							<thead>
							<tr>
								<th>序号</th>
								<th>项目名称</th>
								<th>社会发展项目建设内容</th>
								<th>建设工期</th>
								<th>项目总投资（万元）</th>
								<th>项目状态</th>
							</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="tabbale iframe-wrap" data-component="tab" style="padding-right:0">
	<div class="form-panel">
		<div class="title">中央投资项目信息</div>
		<form id="zytz_form" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">项目名称：</label>
						<div class="col-7">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="xmmc"
								       placeholder="可输入项目名称（支持模糊查询）"/>
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-5">项目总投资：</label>
						<div class="col-5">
							<div class="ipt-box col-575">
								<input type="text" class="ipt-txt"
								       id="zytz_startNo" name="startNo">
							</div>
							<span class="col-05 item-line">-</span>
							<div class="ipt-box col-575">
								<input type="text" class="ipt-txt clx"
								       id="zytz_endNo" name="endNo">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="center mt10">
				<input type="button" id="zytz_search" value="查询" class="btn mr20">
				<input type="reset" id="zytz_cancel" value="重置" class="btn mr20">
			</div>
		</form>
		<div class="tab-content mb20 mt10">
			<div class="tab-panel tab-panel-show">
				<div id="zytz_tab" class="">
					<div class="table-out">
						<table id="zytz_table" class="table-row nowrap" width="100%">
							<thead>
							<tr>
								<th>序号</th>
								<th>项目名称</th>
								<th>专项名称</th>
								<th>计划建设内容与规模</th>
								<th>项目总投资（万元）</th>
							</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="tabbale iframe-wrap" data-component="tab" style="padding-right:0">
	<div class="form-panel">
		<div class="title">科技成果</div>
		<form id="kgcg_form" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">科技成果名称：</label>
						<div class="col-7">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="kjcgmc"
								       placeholder="可输入科技成果名称（支持模糊查询）"/>
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-5">科技成果登记号：</label>
						<div class="col-7">
							<div class="ipt-box col-11">
								<input type="text" class="ipt-txt" name="kjcgdjh" placeholder="可输入科技成果登记号"/>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="center mt10">
				<input type="button" id="kgcg_search" value="查询" class="btn mr20">
				<input type="reset" id="kgcg_cancel" value="重置" class="btn mr20">
			</div>
		</form>
		<div class="tab-content mb20 mt10">
			<div class="tab-panel tab-panel-show">
				<div id="kgcg_tab" class="">
					<div class="table-out">
						<table id="kgcg_table" class="table-row nowrap" width="100%">
							<thead>
							<tr>
								<th>序号</th>
								<th>科技成果名称</th>
								<th>科技成果登记号</th>
								<th>知识产权</th>
								<th>成果公报内容</th>
							</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="tabbale iframe-wrap" data-component="tab" style="padding-right:0">
	<div class="form-panel">
		<div class="title">慈善捐赠</div>
		<form id="csjz_form" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">捐赠项目名称：</label>
						<div class="col-7">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="jzxmmc"
								       placeholder="可输入捐赠项目名称（支持模糊查询）"/>
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-5">捐赠金额：</label>
						<div class="col-5">
							<div class="ipt-box col-575">
								<input type="text" class="ipt-txt"
								       id="csjz_startNo" name="startNo">
							</div>
							<span class="col-05 item-line">-</span>
							<div class="ipt-box col-575">
								<input type="text" class="ipt-txt clx"
								       id="csjz_endNo" name="endNo">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="center mt10">
				<input type="button" id="csjz_search" value="查询" class="btn mr20">
				<input type="reset" id="csjz_cancel" value="重置" class="btn mr20">
			</div>
		</form>
		<div class="tab-content mb20 mt10">
			<div class="tab-panel tab-panel-show">
				<div id="csjz_tab" class="">
					<div class="table-out">
						<table id="csjz_table" class="table-row nowrap" width="100%">
							<thead>
							<tr>
								<th>序号</th>
								<th>捐赠项目名称</th>
								<th>捐赠金额</th>
								<th>受理单位</th>
								<th>捐赠日期</th>
							</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="tabbale iframe-wrap" data-component="tab" style="padding-right:0">
	<div class="form-panel">
		<div class="title">上市信息</div>
		<form id="ssxx_form" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">单位名称：</label>
						<div class="col-7">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="dwmc"
								       placeholder="可输入单位名称（支持模糊查询）"/>
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-5">股票代码：</label>
						<div class="col-7">
							<div class="ipt-box col-11">
								<input type="text" class="ipt-txt" name="gpdm" placeholder="可输入股票代码"/>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="center mt10">
				<input type="button" id="ssxx_search" value="查询" class="btn mr20">
				<input type="reset" id="ssxx_cancel" value="重置" class="btn mr20">
			</div>
		</form>
		<div class="tab-content mb20 mt10">
			<div class="tab-panel tab-panel-show">
				<div id="ssxx_tab" class="">
					<div class="table-out">
						<table id="ssxx_table" class="table-row nowrap" width="100%">
							<thead>
							<tr>
								<th>序号</th>
								<th>单位名称</th>
								<th>股票代码</th>
								<th>上市日期</th>
							</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="tabbale iframe-wrap" data-component="tab" style="padding-right:0">
	<div class="form-panel">
		<div class="title">承建项目</div>
		<form id="cjxm_form" class="form-box mb5">
			<div class="form-list pdr8">
				<div class="form-item clearfix">
					<div class="col-6">
						<label class="item-name col-5">项目名称：</label>
						<div class="col-7">
							<div class="ipt-box col-12">
								<input type="text" class="ipt-txt" name="xmmc"
								       placeholder="可输入项目名称（支持模糊查询）"/>
							</div>
						</div>
					</div>
					<div class="col-6">
						<label class="item-name col-5">项目单位：</label>
						<div class="col-7">
							<div class="ipt-box col-11">
								<input type="text" class="ipt-txt" name="xmdw" placeholder="可输入项目单位（支持模糊查询）"/>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="center mt10">
				<input type="button" id="cjxm_search" value="查询" class="btn mr20">
				<input type="reset" id="cjxm_cancel" value="重置" class="btn mr20">
			</div>
		</form>
		<div class="tab-content mb20 mt10">
			<div class="tab-panel tab-panel-show">
				<div id="cjxm_tab" class="">
					<div class="table-out">
						<table id="cjxm_table" class="table-row nowrap" width="100%">
							<thead>
							<tr>
								<th>序号</th>
								<th>项目名称</th>
								<th>项目单位</th>
								<th>社会发展项目建设内容</th>
								<th>项目总投资（万元）</th>
							</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="/js/search/ProduceSearch/producesearch.js"></script>
</body>
</html>
