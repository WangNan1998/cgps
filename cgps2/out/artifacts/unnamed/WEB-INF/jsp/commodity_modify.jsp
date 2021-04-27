<%--
  Created by IntelliJ IDEA.
  User: WangNan
  Date: 2021/4/27
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="cgps_project_path.jsp"%>
<html>
<head>
    <title>商品修改页面</title>
    <link rel="icon" href="${path}/statics/image/logo2.png" type="image/ico">
    <meta name="keywords" content="社区团购、后台、管理">
    <meta name="description" content="这是一个社区团购后台管理系统">
    <meta name="author" content="晚风亦是救赎">
    <link href="${path}/statics/css/bootstrap.min.css" rel="stylesheet">
    <link href="${path}/statics/css/materialdesignicons.min.css" rel="stylesheet">
    <link href="${path}/statics/css/style.min.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="${path}/statics/date-control/jeDate-test.css">
    <link type="text/css" rel="stylesheet" href="${path}/statics/date-control/jedate.css">
    <script type="text/javascript" src="${path}/statics/date-control/jedate.js"></script>
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

        <main class="lyear-layout-content">
            <p>商品分类-->：${commodity.classifyName} / ${commodity.subclassifyName}</p>
            <p>助记码-->:${commodity.commodityMemory}</p>
            <p>商品名称--->:${commodity.commodityName}</p>
            <p>商品编码-->:${commodity.commodityCode}</p>
            <p>商品品牌--->:${commodity.brandName}</p>
            <p>商品产地--->:${commodity.commoditySource}</p>
            <p>商品标签--->:${commodity.labelName}</p>
            <p>商品主图--->: <img src="${path}/statics/image/${commodity.mainPictures}" alt=""></p>
            <p>商品活动图片--->: <img src="${path}/statics/image/${commodity.activityPictures}" alt=""></p>
            <p>商品视频--->: <img src="${path}/statics/image/${commodity.commodityVideo}" alt=""></p>
            <p>商品单位--->:${commodity.unitName}</p>
            <p>商品说明--->:${commodity.commodityExplain}</p>
            <p>商品描述--->:${commodity.commodityDescribe}</p>
            <p>划线价--->:${commodity.commodityMprice}</p>
            <p>商城价-->:${commodity.commodityDprice}</p>
            <p>上架时间--->:<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${commodity.groundingTime}"/></p>
            <p>下架时间--->:<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${commodity.undercarriageTime}"/></p>
            <p>录入时间--->:<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${commodity.enteringTime}"/></p>
        </main>
    </div>
</div>
<script type="text/javascript" src="${path}/statics/js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="${path}/statics/js/coco-modal.min.js"></script>
<script type="text/javascript" src="${path}/statics/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${path}/statics/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="${path}/statics/js/main.min.js"></script>
<script type="text/javascript" src="${path}/statics/date-control/demo.js"></script>
<script>
    // 点击a标签颜色变化
    $(function () {
        let commodity = $(".style-commodity");
        commodity.parent().parent().parent().addClass("open");
        commodity.parent().parent().parent().find("a:eq(0)")
            .css({"background": "#33CACA", "color": "#FFF"});
        commodity.parent().parent().show();
        commodity.eq(0).css("color", "#33caca");
    })
</script>
</body>
</html>
