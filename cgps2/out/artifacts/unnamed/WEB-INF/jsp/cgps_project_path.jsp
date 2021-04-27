<%@ page import="com.cgps.util.Constant" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: WangNan
  Date: 2021/4/22
  Time: 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
    application.setAttribute("path",basePath);
    application.setAttribute("userSession", Constant.USERSESSION);
%>
<c:set var="path" value="${path}"/>
<c:set var="userSession" value="${userSession}"/>
