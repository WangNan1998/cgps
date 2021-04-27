<%--
  Created by IntelliJ IDEA.
  User: WangNan
  Date: 2021/4/22
  Time: 11:30
  To change this template use File | Settings | File Templates.
--%>
<%@include file="cgps_project_path.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <title>社区团购首页</title>
    <link rel="icon" href="${path}/statics/image/logo2.png" type="image/ico">
    <meta name="keywords" content="社区团购、后台、管理">
    <meta name="description" content="这是一个社区团购后台管理系统">
    <meta name="author" content="晚风亦是救赎">
    <link href="${path}/statics/css/bootstrap.min.css" rel="stylesheet">
    <link href="${path}/statics/css/materialdesignicons.min.css" rel="stylesheet">
    <link href="${path}/statics/css/style.min.css" rel="stylesheet">
    <style>
        .card-mstyle {
            background: #f0f0f0;

        }
        .card-mstyle:hover {
            background: #FFF;
            box-shadow: #f0f0f0 5px 5px 5px;
        }
    </style>
</head>
<body>
<div class="lyear-layout-web">
    <div class="lyear-layout-container">
        <!--左侧导航-->
        <%@include file="public/aside.jsp" %>
        <!--End 左侧导航-->

        <!--头部信息-->
        <%@include file="public/header.jsp" %>
        <!--End 头部信息-->

        <!--页面主要内容-->
        <main class="lyear-layout-content">
            <div class="container-fluid">
                <%--营业状况--%>
                <div class="row">
                    <div class="card-header">
                        <h4>
                            <b> &nbsp;&nbsp;&nbsp;&nbsp;营业状况</b>
                            <i style="margin-left:850px;"></i>
                            <a href="javascript:void(0)" class="btn btn-primary btn-xs">今天</a>
                            <a href="javascript:void(0)" class="btn btn-info btn-xs">昨天</a>
                            <a href="javascript:void(0)" class="btn btn-info btn-xs">最近7天</a>
                            <a href="javascript:void(0)" class="btn btn-info btn-xs">最近15天</a>
                        </h4>
                    </div>
                    <div class="card-body">
                        <div class="col-sm-6 col-lg-3">
                            <div class="card bg-primary">
                                <div class="card-body clearfix">
                                    <div class="pull-right">
                                        <p class="h6 text-white m-t-0">订单数量</p>
                                        <p class="h3 text-white m-b-0">102,125.00</p>
                                    </div>
                                    <div class="pull-left"><span class="img-avatar img-avatar-48 bg-translucent"><i
                                            class="mdi mdi-equal-box fa-1-5x"></i></span></div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-lg-3">
                            <div class="card bg-danger">
                                <div class="card-body clearfix">
                                    <div class="pull-right">
                                        <p class="h6 text-white m-t-0">订单金额</p>
                                        <p class="h3 text-white m-b-0">920,000</p>
                                    </div>
                                    <div class="pull-left"><span class="img-avatar img-avatar-48 bg-translucent"><i
                                            class="mdi mdi-currency-cny fa-1-5x"></i></span></div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-lg-3">
                            <div class="card bg-success">
                                <div class="card-body clearfix">
                                    <div class="pull-right">
                                        <p class="h6 text-white m-t-0">新增会员</p>
                                        <p class="h3 text-white m-b-0">34,005,000</p>
                                    </div>
                                    <div class="pull-left"><span class="img-avatar img-avatar-48 bg-translucent"><i
                                            class="mdi mdi-account-multiple fa-1-5x"></i></span></div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-lg-3">
                            <div class="card bg-purple">
                                <div class="card-body clearfix">
                                    <div class="pull-right">
                                        <p class="h6 text-white m-t-0">新增团长</p>
                                        <p class="h3 text-white m-b-0">153</p>
                                    </div>
                                    <div class="pull-left"><span class="img-avatar img-avatar-48 bg-translucent"><i
                                            class="mdi mdi-account fa-1-5x"></i></span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--代办事项--%>
                <div class="row">
                    <div class="card-header"><h4><b> &nbsp;&nbsp;&nbsp;&nbsp;代办事项</b></h4></div>
                    <div class="card-body">
                        <div class="col-sm-6 col-lg-3">
                            <div class="card  card-mstyle">
                                <div class="card-header bg-primary">
                                    <h4>订单待发货(单)</h4>
                                    <ul class="card-actions">
                                        <li>
                                            <button type="button"><i class="mdi mdi-cart"></i></button>
                                        </li>
                                    </ul>
                                </div>
                                <div class="card-body">
                                    <b>999/单</b>
                                </div>
                            </div>
                        </div>
                        <!-- .col-sm-6 -->

                        <div class="col-sm-6 col-lg-3">
                            <div class="card card-mstyle">
                                <div class="card-header bg-success">
                                    <h4>采购待处理(个)</h4>
                                    <ul class="card-actions">
                                        <li>
                                            <button type="button"><i class="mdi mdi-clipboard-alert"></i></button>
                                        </li>
                                    </ul>
                                </div>
                                <div class="card-body">
                                    <b>999/个</b>
                                </div>
                            </div>
                        </div>
                        <!-- .col-sm-6 -->

                        <div class="col-sm-6 col-lg-3">
                            <div class="card card-mstyle">
                                <div class="card-header bg-info">
                                    <h4>取消订单待审核（单）</h4>
                                    <ul class="card-actions">
                                        <li>
                                            <button type="button"><i class="mdi mdi-equal-box"></i></button>
                                        </li>
                                    </ul>
                                </div>
                                <div class="card-body">
                                    <b>999/单</b>
                                </div>
                            </div>
                        </div>
                        <!-- .col-sm-6 -->

                        <div class="col-sm-6 col-lg-3">
                            <div class="card card-mstyle">
                                <div class="card-header bg-warning">
                                    <h4>售后结算(个)</h4>
                                    <ul class="card-actions">
                                        <li>
                                            <button type="button"><i class="mdi mdi-help-network"></i></button>
                                        </li>
                                    </ul>
                                </div>
                                <div class="card-body">
                                    <b>999/个</b>
                                </div>
                            </div>
                        </div>
                        <!-- .col-sm-6 -->

                        <div class="col-sm-6 col-lg-3">
                            <div class="card card-mstyle">
                                <div class="card-header bg-primary">
                                    <h4>售后审核(单)</h4>
                                    <ul class="card-actions">
                                        <li>
                                            <button type="button"><i class="mdi mdi-equal-box"></i></button>
                                        </li>
                                    </ul>
                                </div>
                                <div class="card-body">
                                    <b>999/单</b>
                                </div>
                            </div>
                        </div>
                        <!-- .col-sm-6 -->

                        <div class="col-sm-6 col-lg-3">
                            <div class="card card-mstyle">
                                <div class="card-header bg-success">
                                    <h4>团长未审核(个)</h4>
                                    <ul class="card-actions">
                                        <li>
                                            <button type="button"><i class="mdi mdi-account-alert"></i></button>
                                        </li>
                                    </ul>
                                </div>
                                <div class="card-body">
                                    <b>999/个</b>
                                </div>
                            </div>
                        </div>
                        <!-- .col-sm-6 -->

                        <div class="col-sm-6 col-lg-3">
                            <div class="card card-mstyle">
                                <div class="card-header bg-info">
                                    <h4>团长数量（个）</h4>
                                    <ul class="card-actions">
                                        <li>
                                            <button type="button"><i class="mdi mdi-account-multiple"></i></button>
                                        </li>
                                    </ul>
                                </div>
                                <div class="card-body">
                                    <b>999/个</b>
                                </div>
                            </div>
                        </div>
                        <!-- .col-sm-6 -->

                        <div class="col-sm-6 col-lg-3">
                            <div class="card card-mstyle">
                                <div class="card-header bg-warning">
                                    <h4>短信条数(条)</h4>
                                    <ul class="card-actions">
                                        <li>
                                            <button type="button"><i class="mdi mdi-rss-box"></i></button>
                                        </li>
                                    </ul>
                                </div>
                                <div class="card-body">
                                    <b>598/条</b> &nbsp;&nbsp;<a href=""
                                                                style="padding:3px;border:1px solid darkgreen;border-radius: 12%">充值</a>
                                </div>
                            </div>
                        </div>
                        <!-- .col-sm-6 -->

                    </div>
                </div>
                <%--团长销售排行榜--%>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header"><h4><b>团长销售排行（本月）</b></h4></div>
                            <div class="card-body" style="margin-left:120px;">
                                <canvas id="chart-pie" width="280" height="280"></canvas>
                                <i style="margin-left: 210px;"></i>累计金额：<b>999.99</b>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header"><h4><b>团长销售排行（上月）</b></h4></div>
                            <div class="card-body" style="margin-left:120px;">
                                <canvas id="chart-pie2" width="280" height="280"></canvas>
                                <i style="margin-left: 210px;"></i>累计金额：<b>999.99</b>
                            </div>
                        </div>
                    </div>
                </div>
                <%--营业数据趋势图--%>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header"><h4>营业数据趋势图</h4></div>
                            <div class="card-body">
                                <canvas id="chart-line-3" width="400" height="130"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <%--会员/团长增长情况--%>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header"><h4>会员增长情况</h4></div>
                            <div class="card-body">
                                <canvas id="chart-vbar-1" width="400" height="250"></canvas>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header"><h4>团长增长情况</h4></div>
                            <div class="card-body">
                                <canvas id="chart-vbar-2" width="400" height="250"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!--End 页面主要内容-->
    </div>
</div>

<script type="text/javascript" src="${path}/statics/js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="${path}/statics/js/coco-modal.min.js"></script>
<script type="text/javascript" src="${path}/statics/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${path}/statics/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="${path}/statics/js/main.min.js"></script>
<!--图表插件-->
<script type="text/javascript" src="${path}/statics/js/Chart.js"></script>
<script>
    // 团长销售排行榜（本月）
    new Chart($("#chart-pie"), {
        type: 'pie',
        data: {
            labels: ["红色", "蓝色", "橙色"],
            datasets: [{
                data: [300, 50, 100],
                backgroundColor: ['rgba(255,99,132,1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)']
            }]
        },
        options: {
            responsive: false
        }
    });
    // 团长销售排行榜（上月）
    new Chart($("#chart-pie2"), {
        type: 'pie',
        data: {
            labels: ["红色", "蓝色", "橙色"],
            datasets: [{
                data: [300, 50, 100],
                backgroundColor: ['rgba(255,99,132,1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)']
            }]
        },
        options: {
            responsive: false
        }
    });
    // 营业数据趋势
    new Chart($("#chart-line-3"), {
        type: 'line',
        data: {
            labels: ["一月", "二月", "三月", "四月"],
            datasets: [{
                label: "收入",
                fill: false,
                backgroundColor: "#36a2eb",
                borderColor: "#36a2eb",
                borderWidth: 3,
                pointRadius: 0,
                data: [30, 25, 35, 23]
            },
                {
                    label: "支出",
                    fill: false,
                    borderColor: "#ff6384",
                    backgroundColor: "#ff6384",
                    borderWidth: 3,
                    pointRadius: 0,
                    data: [23, 29, 30, 33]
                }]
        },
        options: {}
    });
    // 会员增长情况
    new Chart($("#chart-vbar-1"), {
        type: 'bar',
        data: {
            labels: ["2021-04-16", "2021-04-17", "2021-04-18", "2021-04-19", "2021-04-20", "2021-04-21", "2021-04-22"],
            datasets: [{
                label: "最近7天",
                backgroundColor: "rgba(51,202,185,0.5)",
                borderColor: "rgba(0,0,0,0)",
                hoverBackgroundColor: "rgba(51,202,185,0.7)",
                hoverBorderColor: "rgba(0,0,0,0)",
                data: [10, 59, 80, 58, 20, 55, 40]
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });
    // 团长增长情况
    new Chart($("#chart-vbar-2"), {
        type: 'bar',
        data: {
            labels: ["2021-04-16", "2021-04-17", "2021-04-18", "2021-04-19", "2021-04-20", "2021-04-21", "2021-04-22"],
            datasets: [{
                label: "最近7天",
                backgroundColor: "rgba(51,202,185,0.5)",
                borderColor: "rgba(0,0,0,0)",
                hoverBackgroundColor: "rgba(51,202,185,0.7)",
                hoverBorderColor: "rgba(0,0,0,0)",
                data: [10, 59, 80, 58, 20, 55, 40]
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });
</script>
</body>
</html>