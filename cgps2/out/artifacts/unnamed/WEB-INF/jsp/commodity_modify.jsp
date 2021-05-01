<%--
  Created by IntelliJ IDEA.
  User: WangNan
  Date: 2021/4/27
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="cgps_project_path.jsp" %>
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
            <form action="${path}/commodity/modify2" method="post" enctype="multipart/form-data">
                商品分类：
                <select name="classifyId">
                    <option value="0">请选择</option>
                </select>
                请选择子分类:
                <select name="subclassifyId">
                    <option value="0">请选择</option>
                </select><br>
                商品别名:
                <input type="text" name="commodityAlias" value="${commodity.commodityAlias}"> <br>
                助记码：
                <input type="text" name="commodityMemory" value="${commodity.commodityMemory}"><br>
                商品名称：
                <input type="text" name="commodityName" value="${commodity.commodityName}"><br>
                商品编码:
                <input type="text" name="commodityCode" value="${commodity.commodityCode}"><br>
                商品品牌：
                <select name="brandId">
                    <option value="0">请选择</option>
                </select><br>
                商品产地：
                <input type="text" name="commoditySource" value="${commodity.commoditySource}"><br>
                商品标签：
                <select name="labelId">
                    <option value="0">请选择</option>
                </select><br>
                商品主图：<img src="${path}/statics/image/${commodity.mainPictures}" alt="">
                <input type="file" name="pictures"><br>
                商品活动图:<img src="${path}/statics/image/${commodity.activityPictures}" alt="">
                <input type="file" name="pictures"><br>
                商品视频： <img src="${path}/statics/image/${commodity.commodityVideo}" alt="">
                <input type="file" name="pictures"><br>
                商品单位：
                <select name="unitId">
                    <option value="0">请选择</option>
                </select><br>
                商品说明：
                <textarea style="height:30px;" name="commodityExplain" cols="30" rows="10">
                    ${commodity.commodityExplain}
                </textarea><br>
                商品描述：
                <textarea style="height:30px;" name="commodityDescribe" cols="30" rows="10">
                    ${commodity.commodityDescribe}
                </textarea><br>
                划线价：
                <input type="text" name="commodityMprice" value="${commodity.commodityMprice}"><br>
                商城价：
                <input type="text" name="commodityDprice" value="${commodity.commodityDprice}"><br>
               <%-- 上架时间：
                <input type="text" autocomplete="off" style="width:200px;display: inline-block" class="jeinput"
                       id="enYMDhms" name="groundingTime"
                       value=" <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${commodity.groundingTime}"/>">
                <br>
                下架时间：
                <input type="text" autocomplete="off" style="width:200px;display: inline-block" class="jeinput"
                       id="enYMD" name="undercarriageTime"
                       value=" <fmt:formatDate pattern="yyyy-MM-dd" value="${commodity.undercarriageTime}"/>">
                <br>
                录入时间：
                <input type="text" autocomplete="off" style="width:200px;display: inline-block" class="jeinput"
                       id="test04" name="enteringTime"
                       value=" <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${commodity.enteringTime}"/>">
                <br>--%>
                    <input type="hidden" name="commodityId" value="${commodity.commodityId}">
                <input class="btn btn-success " type="submit" value="提交">
                <input class="btn btn-danger" type="reset" value="重置">
            </form>
        </main>
    </div>
</div>
<script type="text/javascript" src="${path}/statics/js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="${path}/statics/js/coco-modal.min.js"></script>
<script type="text/javascript" src="${path}/statics/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${path}/statics/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="${path}/statics/js/main.min.js"></script>
<script type="text/javascript" src="${path}/statics/date-control/demo.js"></script>
<c:if test="${null != info}">
    <script>
        coco.init();
        coco.alert('${info}');
        <%request.removeAttribute("info");%>
    </script>
</c:if>
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
    // 商品分类数据获取
    $.ajax({
        url: "${path}/commodity/add-data",
        dataType: "JSON",
        data: {"method": "classify"},
        success: function (value) {
            for (let i = 0; i < value.length; i++) {
                let option_ = "<option value='" + (value[i].id) + "'>" + (value[i].name) + "</option>";
                $("select[name='classifyId']").append(option_);
            }
            $("select[name=classifyId] option[value=${commodity.classifyId}]").prop("selected", true);
        }
    })
    // 获取商品子分类数据
    function delay() {
        $.ajax({
            url: "${path}/commodity/add-data",
            dataType: "JSON",
            data: {"method": "subClassify", "classifyId": $("select[name='classifyId']").val()},
            success: function (value) {
                let option_ = "<option value='0'>请选择</option>";
                for (let i = 0; i < value.length; i++) {
                    option_ += "<option value='" + (value[i].id) + "'>" + (value[i].name) + "</option>";
                }
                $("select[name='subclassifyId']").html(option_);
                $("select[name=subclassifyId] option[value=${commodity.subclassifyId}]").prop("selected", true);
            }
        })
    }
    $("select[name='classifyId']").click(function () {
        delay()
    });
    setTimeout("delay()",500);
    // 获取所有的计量单位
    $.ajax({
        url: "${path}/commodity/add-data",
        dataType: "JSON",
        data: {"method": "unit"},
        success: function (value) {
            for (let i = 0; i < value.length; i++) {
                let label_ = "<option value='" + (value[i].id) + "'>" + (value[i].name) + "</option>";
                $("select[name=unitId]").append(label_);
            }
            $("select[name=unitId] option[value=${commodity.unitId}]").prop("selected", true);
        }
    })
    // 获取所有的商品标签
    $.ajax({
        url: "${path}/commodity/add-data",
        dataType: "JSON",
        data: {"method": "label"},
        success: function (value) {
            for (let i = 0; i < value.length; i++) {
                let label_ = "<option value='" + (value[i].id) + "'>" + (value[i].name) + "</option>";
                $("select[name=labelId]").append(label_);
            }
            $("select[name=labelId] option[value=${commodity.labelId}]").prop("selected", true);
        }
    })
    // 获取所有的商品品牌
    $.ajax({
        url: "${path}/commodity/add-data",
        dataType: "JSON",
        data: {"method": "brand"},
        success: function (value) {
            for (let i = 0; i < value.length; i++) {
                let label_ = "<option value='" + (value[i].id) + "'>" + (value[i].name) + "</option>";
                $("select[name=brandId]").append(label_);
            }
            $("select[name=brandId] option[value=${commodity.brandId}]").prop("selected", true);
        }
    })
</script>
</body>
</html>
