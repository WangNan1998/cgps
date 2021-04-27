<%--
  Created by IntelliJ IDEA.
  User: WangNan
  Date: 2021/4/24
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@include file="cgps_project_path.jsp"%>
<html>
<head>
    <title>商品新增</title>
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

        <%--页面主要内容--%>
        <main class="lyear-layout-content">

            <div class="container-fluid">
                <div class="row col-lg-12">
                    <div class="card">

                        <%--面包屑导航--%>
                        <div class="card-body">
                            <ul class="breadcrumb"  style="font-size:12px;">
                                <li><a href="${path}/commodity/list">商品</a></li>
                                <li class="active">新增商品</li>
                            </ul>

                            <form action="${path}/commodity/add-commodity" method="post" id="add-commodity" class="form-inline" enctype="multipart/form-data">
                                <i style="display: inline-block;width:5px;height:5px;border-radius: 50%;background: lightgreen;"></i>
                                基本信息 <input type="checkbox" checked name="stateId" value="1"> 上架
                                <br><br>
                                商品分类
                                <select name="classifyId">
                                    <option value="0">请选择</option>
                                </select>



                                商品子分类
                                <select name="subclassifyId">
                                    <option value="0">请选择</option>
                                </select>
                                <br><br>
                                商品品牌
                                <input type="text" name="brandName" value="${commodity.brandName}">
                                <br><br>
                                商品名称
                                <input type="text" name="commodityName" value="${commodity.commodityName}">
                                <br><br>
                                商品编码
                                <input type="text" name="commodityCode" value="${commodity.commodityCode}">
                                <br><br>
                                助记码
                                <input type="text" name="commodityMemory" value="${commodity.commodityAlias}">
                                <br><br>
                                商品产地
                                <input type="text" name="commoditySource" value="${commodity.commoditySource}">
                                <br><br>
                                默认供应商
                                <select name="providerId">
                                    <option value="0">请选择</option>
                                </select>
                                <br><br>
                                标签
                                <div id="c_label"></div>
                                <br><br>
                                商品主图 <span style="font-size:11px;margin-left:15px;">图片尺寸800*800px，大小≤2MB，支持JPG、PNG、JPEG，最多上传1张，建议使用白底图片作为商品主图</span>
                                <input type="file" name="attachs">
                                <br><br>
                                活动图片 <span style="font-size:11px;margin-left:15px;">图片尺寸800*400px，大小≤2MB，支持JPG、PNG、JPEG，最多支持1张，商品为活动商品时，在首页显示活动图片</span>
                                <input type="file" name="attachs">
                                <br><br>
                                商品视频 <span style="font-size:11px;margin-left:15px;">视频尺寸比例建议为16:9.长度建议10s-60s之间，大小<=20MB，支持MP4格式，显示为商品详情页视频</span>
                                <input type="file" name="attachs">
                                <br><br>
                                商品单位
                                <div id="unit"></div>
                                <br><br>
                                商品说明 <textarea name="commodityExplain" style="vertical-align:middle;width: 200px;height:30px;" cols="30" rows="10"></textarea>
                                <br><br>
                                描述 <textarea name="commodityDescribe" style="vertical-align:middle;width: 200px;height:30px;" cols="30" rows="10"></textarea>
                                <br><br>
                                划线价 <input type="text" name="commodityDprice"> || 商城价 <input type="text" name="commodityMprice">
                                <br><br>
                                商品上架时间 <input type="text" disabled placeholder="请选择日期"><br>
                                商品下架时间 <input type="text" autocomplete="off" name="undercarriageTime" style="width:200px;display: inline-block" class="jeinput" id="enYMD"  placeholder="请选择日期">
                                <br><br>
                                <button class="btn btn-success" id="tijiao">保存并回到列表页</button>
                                <button class="btn btn-success">保存并继续新增</button>

                            </form>
                        </div>

                    </div>
                </div>
            </div>

        </main>
        <%--End 页面主要内容--%>
    </div>
</div>

<script type="text/javascript" src="${path}/statics/js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="${path}/statics/js/coco-modal.min.js"></script>
<script type="text/javascript" src="${path}/statics/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${path}/statics/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="${path}/statics/js/main.min.js"></script>
<script type="text/javascript" src="${path}/statics/date-control/demo.js"></script>
<c:if test="${null != info}">
    <script>coco.init();coco.alert('${info}')</script>
</c:if>
<script>

    // 验证商品编码是否存在
    $("input[name=commodityCode]").blur(function () {
        $.ajax({
            url : "${path}/commodity/add-data",
            dataType : "text",
            data : {"method":"testCode","c_code":$(this).val()},
            success : function (value) {
                if(value == "exist"){
                    coco.alert("该商品编码已存在，新增失败") ;
                }
            }
        })
    })
    // 获取所有的计量单位
    $.ajax({
        url : "${path}/commodity/add-data",
        dataType : "JSON",
        data : {"method":"unit"},
        success : function (value) {
            for(let i=0;i<value.length;i++){
                let label_ = "<label><input type='radio' name='unitId'" +
                    "value='"+(value[i].id)+"'>"+(value[i].name)+"</label>";
                $("#unit").append(label_);
            }
        }
    })
    // 获取所有的商品标签
    $.ajax({
        url : "${path}/commodity/add-data",
        dataType : "JSON",
        data : {"method":"label"},
        success : function (value) {
            for(let i=0;i<value.length;i++){
                let label_ = "<label><input type='radio' name='labelId'" +
                    "value='"+(value[i].id)+"'>"+(value[i].name)+"</label>";
                $("#c_label").append(label_);
            }
        }
    })
    // 上下架按钮被点击事件监听
    $("input[name=stateId]").click(function () {
        if($(this).is(":checked")){
            $(this).val(1);
        }else {
            $(this).val(2);
        }
    })
    // 商品分类数据获取
    $.ajax({
        url : "${path}/commodity/add-data",
        dataType : "JSON",
        data : {"method":"classify"},
        success : function (value) {
            for(let i=0;i<value.length;i++){
                let option_ = "<option value='"+(value[i].id)+"'>"+(value[i].name)+"</option>";
                $("select[name='classifyId']").append(option_);
            }
        }
    })
    // 获取商品子分类数据
    $("select[name='classifyId']").click(function () {
        let classifyId = $(this).val();
        $.ajax({
            url : "${path}/commodity/add-data",
            dataType : "JSON",
            data : {"method":"subClassify","classifyId":classifyId},
            success : function (value) {
                let option_ = "<option value='0'>请选择</option>";
                for(let i=0;i<value.length;i++){
                    option_ += "<option value='"+(value[i].id)+"'>"+(value[i].name)+"</option>";
                }
                $("select[name='subclassifyId']").html(option_);
            }
        })
    })
    // 获取所有供应商数据
    $.ajax({
        url : "${path}/commodity/add-data",
        dataType : "JSON",
        data : {"method":"provider"},
        success : function (value) {
            for(let i=0;i<value.length;i++){
                let option_ = "<option value='"+(value[i].proId)+"'>"+(value[i].proName)+"</option>";
                $("select[name='providerId']").append(option_);
            }
        }
    })
    // 提交表单数据
    $("#tijiao").click(function () {
        $("#add-commodity").submit();
    })
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
