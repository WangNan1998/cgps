<%--
  Created by IntelliJ IDEA.
  User: WangNan
  Date: 2021/4/22
  Time: 11:45
  To change this template use File | Settings | File Templates.
--%>
<%--引入全局路径--%>
<%@include file="cgps_project_path.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <title>登录页面</title>
    <%--网页logo--%>
    <link rel="icon" href="${path}/statics/image/logo2.png" type="image/ico">
    <link href="${path}/statics/css/bootstrap.min.css" rel="stylesheet">
    <link href="${path}/statics/css/materialdesignicons.min.css" rel="stylesheet">
    <link href="${path}/statics/css/style.min.css" rel="stylesheet">
    <link href="${path}/statics/css/cgps_login.css" rel="stylesheet">
</head>
<body>
<div class="row lyear-wrapper">
    <input type="hidden" id="path" value="${path}">
    <input type="hidden" id="info" value="${sessionScope.info}">
    <div class="lyear-login">
        <div class="login-center">
            <div class="login-header text-center">
                <a href="javascript:;"> <img height="80px" width="400px" style="padding-left:65px;" alt="晚风亦是救赎" src="${path}/statics/image/logo6.png"> </a>
            </div>
            <form action="#!" method="post">
                <div class="form-group has-feedback feedback-left">
                    <input type="text" placeholder="请输入您的用户名" class="form-control" name="username" id="username" />
                    <span class="mdi mdi-account form-control-feedback" aria-hidden="true"></span>
                </div>
                <div class="form-group has-feedback feedback-left">
                    <input type="password"  placeholder="请输入密码" class="form-control" id="password" name="password" />
                    <span class="mdi mdi-lock form-control-feedback" aria-hidden="true"></span>
                </div>
                <div class="form-group has-feedback feedback-left row">
                    <div class="col-xs-7">
                        <input type="text"  name="captcha" class="form-control" placeholder="验证码">
                        <span class="mdi mdi-check-all form-control-feedback" aria-hidden="true"></span>
                    </div>
                    <div class="col-xs-5"  id="check-code">
                        <div class="code" id="data_code" title="点击刷新"></div>
                    </div>
                </div>
                <div class="form-group">
                    <button class="btn btn-block btn-primary" type="button">立即登录</button>
                </div>
            </form>
            <hr>
            <footer class="col-sm-12 text-center">
                <p class="m-b-0">Copyright © 2021 <a href="#">晚风亦是救赎</a>. All right reserved</p>
            </footer>
        </div>
    </div>
</div>
<script type="text/javascript" src="${path}/statics/js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="${path}/statics/js/coco-modal.min.js"></script>
<script type="text/javascript" src="${path}/statics/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${path}/statics/js/cgps_login.js"></script>
<c:if test="${sessionScope.info!=null}">
    <script>
        let info = $("#info").val();
        if(info.length > 0){
            coco.alert(""+info+"");
        }
    </script>
    <%session.removeAttribute("info");%>
</c:if>
</body>
</html>