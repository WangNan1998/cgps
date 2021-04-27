<%--
  Created by IntelliJ IDEA.
  User: WangNan
  Date: 2021/4/22
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<aside class="lyear-layout-sidebar">
    <!-- logo -->
    <div id="logo" class="sidebar-header">
        <a href="${path}/index"><img src="${path}/statics/image/logo6.png" title="社区团购管理系统" alt="晚风亦是救赎" /></a>
    </div>
    <div class="lyear-layout-sidebar-scroll">

        <nav class="sidebar-main">
            <ul class="nav nav-drawer">
                <%--↓ active--%>
                <li class="nav-item"> <a href="${path}/index"><i class="mdi mdi-home"></i> 首页</a> </li>
                <li class="nav-item nav-item-has-subnav">
                    <a href="javascript:void(0)"><i class="mdi mdi-cart"></i> 商品</a>
                    <ul class="nav nav-subnav">
                        <li> <a href="${path}/commodity/list" class="style-commodity">商品档案</a> </li>
                        <li> <a href="${path}/commodity/category" class="style-commodity">商品分类</a> </li>
                        <li> <a href="${path}/commodity/profile" class="style-commodity">辅助资料</a> </li>
                        <li> <a href="${path}/commodity/goodsImg" class="style-commodity">商品图片</a> </li>
                        <li> <a href="${path}/commodity/goodsEvaluate" class="style-commodity">商品评价</a> </li>
                    </ul>
                </li>
                <li class="nav-item nav-item-has-subnav">
                    <a href="javascript:void(0)"><i class="mdi mdi-equal-box"></i> 订单</a>
                    <ul class="nav nav-subnav">
                        <li> <a href="${path}/bill/list" class="style-bill">订单列表</a> </li>
                        <li> <a href="${path}/bill/returnOrder" class="style-bill">退货管理</a> </li>
                        <li> <a href="${path}/bill/afterSaleReason" class="style-bill">售后原因</a> </li>
                        <li> <a href="${path}/bill/cancelOrder" class="style-bill">取消订单</a> </li>
                    </ul>
                </li>
                <li class="nav-item nav-item-has-subnav">
                    <a href="javascript:void(0)"><i class="mdi mdi-account-multiple"></i> 会员</a>
                    <ul class="nav nav-subnav">
                        <li> <a href="${path}/vip/list" class="style-vip">会员列表</a> </li>
                        <li> <a href="${path}/vip/level" class="style-vip">会员等级</a> </li>
                        <li> <a href="${path}/vip/tag" class="style-vip">会员标签</a> </li>
                        <li> <a href="${path}/vip/group" class="style-vip">会员分组</a> </li>
                        <li> <a href="${path}/vip/vipCard" class="style-vip">会员卡</a> </li>
                        <li> <a href="${path}/vip/integral" class="style-vip">会员积分</a> </li>
                    </ul>
                </li>
                <li class="nav-item nav-item-has-subnav">
                    <a href="javascript:void(0)"><i class="mdi mdi-account"></i> 团长</a>
                    <ul class="nav nav-subnav">
                        <li> <a href="${path}/rc/list" class="style-rc">团长列表</a> </li>
                        <li> <a href="${path}/rc/level" class="style-rc">团长等级</a> </li>
                        <li> <a href="${path}/rc/shopRank" class="style-rc">团长排行</a> </li>
                    </ul>
                </li>
              <%--  <li class="nav-item nav-item-has-subnav">
                    <a href="javascript:void(0)"><i class="mdi mdi-menu"></i> 多级菜单</a>
                    <ul class="nav nav-subnav">
                        <li> <a href="#!">一级菜单</a> </li>
                        <li class="nav-item nav-item-has-subnav">
                            <a href="#!">一级菜单</a>
                            <ul class="nav nav-subnav">
                                <li> <a href="#!">二级菜单</a> </li>
                                <li class="nav-item nav-item-has-subnav">
                                    <a href="#!">二级菜单</a>
                                    <ul class="nav nav-subnav">
                                        <li> <a href="#!">三级菜单</a> </li>
                                        <li> <a href="#!">三级菜单</a> </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li> <a href="#!">一级菜单</a> </li>
                    </ul>
                </li>--%>
            </ul>
        </nav>
    </div>
</aside>
