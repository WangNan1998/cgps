<%--
  Created by IntelliJ IDEA.
  User: WangNan
  Date: 2021/4/23
  Time: 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@include file="cgps_project_path.jsp" %>
<html>
<head>
    <title>辅助资料</title>
    <link rel="icon" href="${path}/statics/image/logo2.png" type="image/ico">
    <meta name="keywords" content="社区团购、后台、管理">
    <meta name="description" content="这是一个社区团购后台管理系统">
    <meta name="author" content="晚风亦是救赎">
    <link href="${path}/statics/css/bootstrap.min.css" rel="stylesheet">
    <link href="${path}/statics/css/materialdesignicons.min.css" rel="stylesheet">
    <link href="${path}/statics/css/style.min.css" rel="stylesheet">
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

                <div class="row col-lg-12">

                    <div class="card">

                        <%--面包屑导航--%>
                        <div class="card-body">
                            <ul class="breadcrumb"  style="font-size:12px;">
                                <li><a href="${path}/commodity/list">商品</a></li>
                                <li class="active">辅助资料</li>
                            </ul>
                            <i style="margin-right:5px;border-radius:50%;background: lightgreen;display: inline-block;width: 7px;height:7px;"></i>
                            计量单位
                            <hr>
                            <button class="btn btn-info btn-xs">袋</button>&nbsp;
                            <button class="btn btn-info btn-xs">斤</button>&nbsp;
                            <button class="btn btn-info btn-xs">只</button>&nbsp;
                            <button class="btn btn-info btn-xs">捆</button>&nbsp;
                            <button class="btn btn-info btn-xs">箱</button>&nbsp;
                            <button class="btn btn-info btn-xs">个</button> &nbsp;
                            <button class="btn btn-w-xs btn-success btn-xs">新增</button>
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
<script>
    // 点击a标签颜色变化
    let commodity = $(".style-commodity");
    commodity.parent().parent().parent().addClass("open");
    commodity.parent().parent().parent().find("a:eq(0)")
        .css({"background":"#33CACA","color":"#FFF"});
    commodity.parent().parent().show();
    commodity.eq(2).css("color","#33caca");
</script>
</body>
</html>
