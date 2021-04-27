<%--
  Created by IntelliJ IDEA.
  User: WangNan
  Date: 2021/4/23
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@include file="cgps_project_path.jsp" %>
<html>
<head>
    <title>会员等级页面</title>
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
                <div class="row">
                    <h1>会员等级页面</h1>
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
    let vip = $(".style-vip");
    vip.parent().parent().parent().addClass("open");
    vip.parent().parent().parent().find("a:eq(0)")
        .css({"background":"#33CACA","color":"#FFF"});
    vip.parent().parent().show();
    vip.eq(1).css("color","#33caca");
</script>
</body>
</html>