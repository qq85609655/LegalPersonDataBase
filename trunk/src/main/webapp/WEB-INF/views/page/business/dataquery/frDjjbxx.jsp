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
</head>
<body>
<jsp:include page="../../common/header.jsp?ref=detail"/>
<input type="hidden" id="frwybs" value="${frwybs}"/>
<div class="iframe-wrap bg-white">
    <div class="pd15">
        <div class="reg-caption">
            <div class="title clearfix">
                <span class="name fl mr5">${jbxx['ztdj'].frmc}</span>

                <c:if test="${jbxx['ztdj'].cxzt == '1'}">
                    <span class="icon-rectangle green fl mr10">存续</span>
                </c:if>
                <c:if test="${jbxx['ztdj'].cxzt == '2'}">
                    <span class="icon-rectangle gray fl mr10">注销</span>
                </c:if>
                <c:if test="${jbxx['ztdj'].cxzt == '3'}">
                    <span class="icon-rectangle blue fl mr10">个转企</span>
                </c:if>
                <c:if test="${jbxx['ztdj'].cxzt == '4'}">
                    <span class="icon-rectangle red fl mr10">被列入经营异常名录和严重违法失信（黑名单）</span>
                </c:if>
            </div>
            <p>
                统一社会信用代码/注册号：${jbxx['ztdj'].tyxydm}
            </p>
        </div>
        <div class="tabbale" data-component="tab">
            <div class="tab-header type-tab person-tab">
                <ul class="clearfix">
                    <li class="tab-selected"><span class="tab-item"><a href="<c:url value='/data/frdetail/djjbxx/${frwybs}'/>">基本信息</a></span>
                    </li>
                    <li class=""><span class="tab-item"><a href="<c:url value='/data/frdetail/zbyzc/${frwybs}'/>">资本与资产</a></span>
                    </li>
                    <li class=""><span class="tab-item"><a href="<c:url value='/data/frdetail/admission/${frwybs}'/>">许可、资质与荣誉</a></span>
                    </li>
                    <li><span class="tab-item"><a href="<c:url value='/data/frdetail/tax/${frwybs}'/>">纳税、参保与缴费</a></span>
                    </li>
                    <li><span class="tab-item"><a href="<c:url value='/data/frdetail/produce/${frwybs}'/>">生产经营</a></span>
                    </li>
                    <li><span class=""><a href="<c:url value='/data/frdetail/lawenforce/${frwybs}'/>">行政执法</a></span>
                    </li>
                    <li><span class="tab-item"><a href="<c:url value='/data/frdetail/lawinfo/${frwybs}'/>">司法信息</a></span>
                    </li>
                    <li><span class="tab-item"><a href="<c:url value='/data/frdetail/comment/${frwybs}'/>">评价信息</a></span>
                    </li>
                </ul>
            </div>
            <div class="tab-content">
                <div class="tab-panel tab-panel-show">
                    <div class="light-info mt10 center">
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
                            <td>${jbxx['status'].jg_content}</td>
                        </tr>


                        <tr>
                            <td class="right bg-blue">类型</td>
                            <td>${jbxx['status'].fr_content}</td>
                            <td class="right bg-blue">成立日期</td>
                            <td><fmt:formatDate value="${jbxx['ztdj'].djrq}" pattern="yyyy年MM月dd日"/></td>
                        </tr>
                        <tr>
                            <td class="right bg-blue">营业期限自</td>
                            <td><fmt:formatDate value="${jbxx['ztdj'].jyqsrq}" pattern="yyyy年MM月dd日"/></td>
                            <td class="right bg-blue">营业期限至</td>
                            <td><fmt:formatDate value="${jbxx['ztdj'].jyjzrq}" pattern="yyyy年MM月dd日"/></td>
                        </tr>
                        <tr>
                            <td class="right bg-blue">经营范围</td>
                            <td>${jbxx['ztdj'].ywfw}</td>
                            <td class="right bg-blue">行业</td>
                            <td>${jbxx['status'].hy_content}</td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="light-info mt10 center pos-rel">
                        <i class="flex-icon"></i>法定代表人
                    </div>
                    <table class="table-row nowrap" width="100%" cellpadding="0" cellspacing="0" border="0">
                        <thead>
                        <tr>
                            <th>序号</th>
                            <th>姓名</th>
                            <th>身份证件类型</th>
                            <th>身份证件号码</th>
                            <th>国籍</th>
                            <th>职务</th>
                            <th>职务产生方式</th>
                            <th>任命方/委派方</th>
                            <th>代表证期限自/任职起始日期</th>
                            <th>代表证期限至/任职截止日期</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="fddbr" varStatus="status" items="${jbxx['fddbr']}">
                            <tr>
                                <td>${status.index+1}</td>
                                <td>${fddbr.xm}</td>
                                <td>${fddbr.zjlx}</td>
                                <td>${fddbr.zjhm}</td>
                                <td>${fddbr.gj}</td>
                                <td>法定代表人</td>
                                <td>${fddbr.zwcsfs}</td>
                                <td>${fddbr.rmf}</td>
                                <td>${fddbr.rzqsrq}</td>
                                <td>${fddbr.rzjzrq}</td>
                                <td></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="light-info mt10 center pos-rel">
                        <i class="flex-icon"></i>成员单位信息
                    </div>
                    <table id="metadata-table" class="table-row  nowrap" width="100%">
                        <thead>
                        <tr>
                            <th>序号</th>
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
                        <i class="flex-icon"></i>法人变更信息
                    </div>

                    <table class="table-row nowrap" width="100%" cellpadding="0" cellspacing="0" border="0">
                        <thead>
                        <tr>
                            <th>序号</th>
                            <th>变更事项</th>
                            <th>变更原因</th>
                            <th>变更前内容</th>
                            <th>变更后内容</th>
                            <th>变更核准日期</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="bgxx" varStatus="status" items="${jbxx['bgxx']}">
                            <tr>
                                <td>${status.index+1}</td>
                                <td>${bgxx.bgsx}</td>
                                <td>${bgxx.bgyy}</td>
                                <td>${bgxx.bgqnr}</td>
                                <td>${bgxx.bghnr}</td>
                                <td>${bgxx.hzrq}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>

                <%--<div class="tab-panel">--%>
                <%--资本与资产--%>
                <%--</div>--%>
                <%--<div class="tab-panel">--%>
                <%--许可、资质与荣誉--%>
                <%--</div>--%>
                <%--<div class="tab-panel">--%>
                <%--纳税、参保与缴费--%>
                <%--</div>--%>
                <%--<div class="tab-panel">--%>
                <%--生产经营--%>
                <%--</div>--%>
                <%--<div class="tab-panel">--%>
                <%--司法信息--%>
                <%--</div>--%>
                <%--<div class="tab-panel">--%>
                <%--评价信息--%>
                <%--</div>--%>

            </div>
        </div>
    </div>
</div>
<jsp:include page="../../common/common.jsp"/>
<script src="<c:url value='/js/business/dataquery/frDjjbxx_main.js'/>"></script>
</body>
</html>
