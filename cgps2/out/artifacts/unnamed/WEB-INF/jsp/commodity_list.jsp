<%--
  Created by IntelliJ IDEA.
  User: WangNan
  Date: 2021/4/23
  Time: 9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="cgps_project_path.jsp" %>
<html>
<head>
    <title>商品档案</title>
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

        <!--页面主要内容-->
        <main class="lyear-layout-content">

            <div class="container-fluid">
                <div class="row col-lg-12">
                    <div class="card">
                        <%--搜索表单--%>
                        <div class="card-body">
                            <form id="form1" action="" class="form-inline" role="form">
                                <div class="form-group">
                                    <label>商品分类：</label>
                                    <select name="classifyId" style="font-size:12px;height:28px;width:100px;">
                                        <option value="0">请选择</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <i style="margin-left:20px;"></i>
                                    <label>商品子分类：</label>
                                    <select name="subclassifyId" style="font-size:12px;height:28px;width:100px;">
                                        <option value="0">请选择</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label><i style="margin-left:30px;"></i>商品搜索：</label>
                                    <input style="font-size:12px;height:30px;width:220px;" type="text"
                                           name="commodityName"
                                           placeholder="商品编码名称助记码别名">
                                </div>
                                <i style="margin-left:25px;"></i>
                                <input type="button" id="queryForm1" value="查询" style="height:28px;"
                                       class="btn btn-success btn-xs">

                                <input type="reset" value="重置" style="height:28px;" class="btn btn-warning btn-xs">
                                <i style="margin-left:100px;"></i>
                                <a id="selectChange1" class="mdi mdi-unfold-more-horizontal" style="font-size:13px;"
                                   href="javascript:void(0)">高级筛选</a>
                            </form>

                            <form id="form2" action="" class="form-inline" style="display: none" role="form">
                                <div class="form-group">
                                    <label>商品分类：</label>
                                    <select name="classifyId" style="font-size:12px;height:28px;width:100px;">
                                        <option value="0">请选择</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <i style="margin-left:20px;"></i>
                                    <label>商品子分类：</label>
                                    <select name="subclassifyId" style="font-size:12px;height:28px;width:100px;">
                                        <option value="0">请选择</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label style="width:100px;"><i
                                            style="margin-left:30px;"></i>商品搜索：</label>
                                    <input style="font-size:12px;height:30px;width:220px;" type="text"
                                           name="commodityName"
                                           placeholder="商品编码名称助记码别名">
                                    <i style="margin-left:100px;"></i><a id="selectChange2"
                                                                         class="mdi mdi-unfold-more-horizontal"
                                                                         style="font-size:13px;"
                                                                         href="javascript:void(0)">收起高级筛选</a>
                                </div>
                                <br><br>

                                <div class="form-group">
                                    <label style="width:70px;">上下架:</label>
                                    <select name="stateId" style="font-size:12px;height:28px;width:100px;">
                                        <option value="0">全部</option>
                                        <option value="1">上架</option>
                                        <option value="2">下架</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label style="width:103px;"><i
                                            style="margin-left:20px;"></i>商品来源：</label>
                                    <input type="text" style="font-size:12px;height:28px;width:100px;"
                                           placeholder="请输入商品来源" name="commoditySource">
                                </div>

                                <div class="form-group">
                                    <label style="margin-left:30px;width:70px;">录入时间:</label>
                                    <input type="text" name="enteringTeamTime"
                                           style="font-size:12px;border:1px solid #000;height:30px;display: inline-block;width:220px;"
                                           class="jeinput" id="test11" placeholder=" 请选择录入时间范围">
                                </div>

                                <br><br>
                                <i style="margin-left:74px;"></i>
                                <input type="button" id="queryForm2" value="查询" style="height:28px;"
                                       class="btn btn-success btn-xs">
                                &nbsp;
                                <input type="reset" value="重置" style="height:28px;" class="btn btn-warning btn-xs">
                                <i style="margin-left:60px;"></i>
                            </form>
                            <hr>
                            <%--新增/同步商品/导入excel/下载模板--%>
                            <a href="${path}/commodity/add" class="btn btn-success btn-xs">新增</a> &nbsp;
                            <a href="#" class="btn btn-default btn-xs mdi mdi-sync" style="color:#000;padding:2px">同步所有售卖商品</a>
                            &nbsp;
                            <a href="#" class="btn btn-default btn-xs" style="color:#000;padding:2px">导入excel</a> &nbsp;
                            <a href="#" class="btn btn-default btn-xs" style="color:#000;padding:2px">下载模板</a>
                        </div>

                        <%--商品展示表格--%>
                        <div class="card-body">
                            <div id="stateShow" style="height:32px;border-bottom:1px solid #666" class="col-lg-12 hidden">
                                    <a href="javascript:void(0)" id="cleanUp" style="display: inline-block;margin:0 16px;" class="mdi mdi-close text-center"></a>
                                    <span id="showNumber" style="display: inline-block;width:80px;">已选择0项</span>
                                    <a style="display: inline-block;width:120px;" class="btn btn-default btn-xs" href="#">批量定时上下架</a>
                                    <a style="display: inline-block;width:80px;" class="btn btn-default btn-xs" href="#">批量上架</a>
                                    <a style="display: inline-block;width:80px;" class="btn btn-default btn-xs" href="#">批量下架</a>
                                    <a style="display: inline-block;width:80px;" class="btn btn-default btn-xs" href="#">批量删除</a>
                            </div>
                            <table class="table table-hover table-striped">
                                <thead>
                                <tr class="active">
                                    <th style="text-align: center"><input id="mainSelect" type="checkbox" style="margin:0 0 5px 20px">
                                    </th>
                                    <th style="text-align: center">商品图片</th>
                                    <th style="text-align: center">商品分类</th>
                                    <th style="text-align: center">商品名称</th>
                                    <th style="text-align: center">品牌</th>
                                    <th style="text-align: center">单位</th>
                                    <th style="text-align: center">状态</th>
                                    <th style="text-align: center">定时上架时间</th>
                                    <th style="text-align: center">定时下架时间</th>
                                    <th style="text-align: center">商城价</th>
                                    <th style="text-align: center">售卖库存</th>
                                    <th style="text-align: center">操作</th>
                                </tr>
                                </thead>
                                <tbody id="list-show"></tbody>
                            </table>
                        </div>
                        <%--商品分页--%>
                        <p id="showPaging">
                            <a href="javascript:void(0)" class="paging_even">首页</a>
                            <a href="javascript:void(0)" class="paging_even">上一页</a>
                            <a href="javascript:void(0)" class="paging_even">下一页</a>
                            <a href="javascript:void(0)" class="paging_even">尾页</a>
                        </p>

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
<script type="text/javascript" src="${path}/statics/date-control/demo.js"></script>
<!--消息提示-->
<script src="${path}/statics/js/bootstrap-notify.min.js"></script>
<script type="text/javascript" src="${path}/statics/js/lightyear.js"></script>

<script>
    getData();
    let pageIndex = null;
    let pageSize = null;
    let totalPage = null;
    let totalQuantity = null;

    // 监听复选框选择事件
    setTimeout("delayed()",500)
    function delayed(){
        let cSelect = $(".c_select");

        $("#mainSelect").click(function () {
            let result = $(this).is(":checked");
            cSelect.prop("checked",result);
            isNumber();
        })
        $(".c_select").click(function () {
            isNumber();
        })
        $("#cleanUp").click(function () {
            $("#mainSelect").prop("checked",false);
            cSelect.prop("checked",false);
            isNumber();
        })
    }
function isNumber(){
    let cSelect = $(".c_select");
    let number = 0;
    for(let i = 0;i < cSelect.length;i++){
        let result = cSelect.eq(i).is(":checked");
        if(result)number++;
    }
    if(number > 0){
        $("#stateShow").removeClass("hidden");
        $("#showNumber").text("已选择"+number+"项");
        if(number == cSelect.length){
            $("#mainSelect").prop("checked",true)
        }else {
            $("#mainSelect").prop("checked",false)
        }
    }
    else {
        $("#stateShow").addClass("hidden");
    }
}
    // 分页
    $(".paging_even").click(function () {
        let temp = $(this).text();
         if(temp=="首页"){
             pageIndex = 1;
             paging();
         }else if(temp=="上一页"){
             if(pageIndex == 1){}else {
                 pageIndex = pageIndex - 1;
                 paging();
             }
         }else if(temp=="下一页"){
             if(pageIndex == totalPage){}else {
                 pageIndex = pageIndex + 1;
                 paging();
             }
         }else if(temp=="尾页"){
             pageIndex = totalPage;
             paging();
         }
    })
    // 分页ajax方法
    function paging() {
        if ($("#queryForm1").is(":hidden")) {
            let classifyId = $("select[name=classifyId]:eq(1)").val();
            let subclassifyId = $("select[name=subclassifyId]:eq(1)").val();
            let commodityName = $("input[name=commodityName]:eq(1)").val();
            let enteringTeamTime = $("input[name=enteringTeamTime]:eq(0)").val();
            let commoditySource = $("input[name=commoditySource]:eq(0)").val();
            let stateId = $("select[name=stateId]:eq(0)").val();
            $.ajax({
                url: "${path}/commodity/commodityListData",
                datatype: "JSON",
                data: {
                    "method": "queryData",
                    "classifyId": classifyId,
                    "subclassifyId": subclassifyId,
                    "commodityName": commodityName,
                    "enteringTeamTime": enteringTeamTime,
                    "commoditySource": commoditySource,
                    "stateId": stateId,
                    "pageIndex": pageIndex,
                    "pageSize": pageSize
                },
                success: function (value) {
                    toLabel(value);
                }
            })
        } else {
            let classifyId = $("select[name=classifyId]:eq(0)").val();
            let subclassifyId = $("select[name=subclassifyId]:eq(0)").val();
            let commodityName = $("input[name=commodityName]:eq(0)").val();
            $.ajax({
                url: "${path}/commodity/commodityListData",
                datatype: "JSON",
                data: {
                    "method": "queryData",
                    "classifyId": classifyId,
                    "subclassifyId": subclassifyId,
                    "commodityName": commodityName,
                    "pageIndex": pageIndex,
                    "pageSize": pageSize
                },
                success: function (value) {
                    toLabel(value);
                }
            })
        }
    }
    // 取消input框的键盘事件
    $(function () {
        /* $('input[name=commodityName]').keyup(function(){
             return false;
         })*/
        $('input[name=commodityName]').keydown(function () {
            if (event.keyCode == 13) {
                return false;
            }
        })
    })
    // 点击查询按钮查询商品数据
    $("#queryForm1").click(function () {
        pageIndex=null;
        paging();
    })
    $("#queryForm2").click(function () {
        pageIndex=null;
        paging();
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
        }
    })
    // 获取商品子分类数据
    $("select[name='classifyId']").click(function () {
        let classifyId = $(this).val();
        $.ajax({
            url: "${path}/commodity/add-data",
            dataType: "JSON",
            data: {"method": "subClassify", "classifyId": classifyId},
            success: function (value) {
                let option_ = "<option value='0'>请选择</option>";
                for (let i = 0; i < value.length; i++) {
                    option_ += "<option value='" + (value[i].id) + "'>" + (value[i].name) + "</option>";
                }
                $("select[name='subclassifyId']").html(option_);
            }
        })
    })
    // 时间戳转当前时间
    function timestampToTime(timestamp) {
        //时间戳为10位需*1000，时间戳为13位的话不需乘1000
        let date = new Date(timestamp);
        let Yy = date.getFullYear() + '-';
        let Mm = (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 1) : date.getMonth() + 1) + '-';
        let Dd = date.getDate() + ' ';
        /*let h = date.getHours() + ':';
        let m = date.getMinutes() + ':';
        let s = date.getSeconds();
        */
        return Yy + Mm + Dd;
    }
    // 显示商品数据
    function getData() {
        $.ajax({
            url: "${path}/commodity/commodityListData",
            datatype: "JSON",
            data: {"method": "queryData"},
            success: function (value) {
                toLabel(value);
            }
        })
    }
    // 将数据显示到指定的标签中
    function toLabel(value) {
        $("#list-show").html("");
        value = JSON.parse(value);
        let paging = value[0];
        pageIndex = paging.pageIndex;
        pageSize = paging.pageSize;
        totalPage = paging.totalPage;
        totalQuantity = paging.totalQuantity;
        $("#showPaging").find("b").remove();
        if(totalPage < 1){
            $("#showPaging").append("<b>当前页 "+pageIndex+" / 1</b>");
        }else if(pageIndex > totalPage){
            pageIndex=1;
            $("#showPaging").append("<b>当前页 "+pageIndex+" / "+totalPage+"</b>");
            paging();
        }else {
            $("#showPaging").append("<b>当前页 "+pageIndex+" / "+totalPage+"</b>");
        }

        for (let i = 1; i < value.length; i++) {
            let commodityData = "<tr>\n" +
                "<td  style=\"text-align: center\"><input class='c_select' type=\"checkbox\" style=\"margin:5px 0 0 20px\"></td>\n" +
                "<td  style=\"text-align: center\"><img width='30px;' height='30px;' src='${path}/statics/image/" + (value[i].mainPictures) + "'></td>\n" +
                "<td  style=\"text-align: center\">" + (value[i].classifyName) + "/" + (value[i].subclassifyName) + "</td>\n" +
                "<td  style=\"text-align: center\">" + (value[i].commodityName) + "</td>\n" +
                "<td  style=\"text-align: center\">" + (value[i].brandName) + "</td>\n" +
                "<td  style=\"text-align: center\">" + (value[i].unitName) + "</td>\n" +
                "<td  style=\"text-align: center\">\n" +
                "<div class=\"form-group row m-b-10\">\n" +
                "    <div class=\"col-xs-12\">\n" +
                "       <label class=\"lyear-switch switch-solid switch-primary\">\n" +
                "       <input class='is-grounding' type=\"checkbox\" checked=\"\">\n" +
                "       <span commodity_id='" + (value[i].commodityId) + "' class='groundingChange'></span>\n" +
                "       </label>\n" +
                "    </div>\n" +
                "</div>\n" +
                "</td>\n" +
                "<td  style=\"text-align: center\">" + (timestampToTime(value[i].groundingTime)) + "</td>\n" +
                "<td  style=\"text-align: center\">" + (timestampToTime(value[i].undercarriageTime)) + "</td>\n" +
                "<td style=\"text-align: center\">" + (value[i].commodityMprice) + " 元</td>\n" +
                "<td style=\"text-align: center\">999</td>\n" +
                "<td style=\"text-align: center\">\n" +
                "  <a href=\"#\">删除</a>\n" +
                "  <a href=\"#\">编辑</a>\n" +
                "  <a href=\"${path}/commodity/detail?id="+(value[i].commodityId)+"\">详情</a>\n" +
                "</td>\n" +
                "</tr>"
            $("#list-show").append(commodityData);
            if (value[i].stateId == "1") {
                $(".is-grounding:eq(" + i + ")").prop("checked", true);
            } else {
                $(".is-grounding:eq(" + i + ")").prop("checked", false);
            }
        }
        setTimeout("temp()", 500); // 延迟绑定事件
    }
    // 点击a标签颜色变化
    $(function () {
        let commodity = $(".style-commodity");
        commodity.parent().parent().parent().addClass("open");
        commodity.parent().parent().parent().find("a:eq(0)")
            .css({"background": "#33CACA", "color": "#FFF"});
        commodity.parent().parent().show();
        commodity.eq(0).css("color", "#33caca");
    })
    // 搜索表单显示和隐藏
    $(function () {
        let selectChange1 = $("#selectChange1");
        let selectChange2 = $("#selectChange2");
        let form1 = $("#form1");
        let form2 = $("#form2");
        selectChange1.click(function () {
            form2.show();
            form1.hide();
        })
        selectChange2.click(function () {
            form2.hide();
            form1.show();
        })
    })
    // 监听商品上下架按钮切换事件
    function temp() {
        $(".groundingChange").on("click", function () {
            let commodityId = $(this).attr("commodity_id");
            $.ajax({
                url: "${path}/commodity/commodityListData",
                datatype: "text",
                data: {"method": "groundingChange", "commodityId": commodityId},
                success: function (value) {
                    if (value == "success") {
                        lightyear.loading('show');
                        setTimeout(function () {
                            lightyear.loading('hide');
                            lightyear.notify('状态修改成功~', 'success', 3000);
                        }, 1e3)
                    } else {
                        lightyear.loading('show');
                        setTimeout(function () {
                            lightyear.loading('hide');
                            lightyear.notify('服务器错误，请稍后再试~', 'danger', 100);
                        }, 1e3)
                    }
                }
            })
        })
    }
</script>
</body>
</html>
