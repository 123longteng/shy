<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Order</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
    ============================================ -->
    <%--<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">--%>

    <!-- All css files are included here. -->
    <!-- Bootstrap framework main css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/reScript/css/bootstrap.min.css">
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/reScript/css/core.css">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/reScript/css/shortcode/shortcodes.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/reScript/css/styles.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/reScript/css/responsive.css">
    <!-- User style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/reScript/css/custom.css">

    <!-- Modernizr JS -->
    <script src="${pageContext.request.contextPath}/reScript/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
<!-- header start -->
<header class="header-pos">
    <div class="header-area header-middle">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-2 col-sm-3 col-xs-12">
                    <div class="logo">
                        <a href="index.jsp"><img src="${pageContext.request.contextPath}/reScript/img/logo/logo.jpg"
                                                 alt=""/></a>
                    </div>
                </div>
                <div class="col-md-10 col-sm-9 col-xs-12 text-right xs-center">
                    <div class="main-menu display-inline hidden-sm hidden-xs">
                        <nav>
                            <ul>
                                <li><a href="/main/index">主页</a></li>
                                <li><a href="/goods/shop">购物</a></li>
                                <li><a href="/goods/shop">商品</a></li>
                                <li><a href="/order/reOrder">订单</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="search-block-top display-inline">
                        <div class="icon-search"></div>
                        <div class="toogle-content">
                            <form action="#" id="searchbox">
                                <input type="text" placeholder="Search"/>
                                <button class="button-search"></button>
                            </form>
                        </div>
                    </div>
                    <div class="shopping-cart ml-20 display-inline">
                        <a href="/cart/index"><b>购物车</b></a>
                    </div>
                    <div class="setting-menu display-inline">
                        <div class="icon-nav current"></div>
                        <ul class="content-nav toogle-content">
                            <li class="currencies-block-top">
                                <ul>
                                    <li><a href="#">登陆</a></li>
                                    <li><a href="#">退出</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- header end -->
<div class="space-custom"></div>
<!-- breadcrumb start -->
<div class="breadcrumb-area">
    <div class="container">
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-home">主页</i></a></li>
        </ol>
    </div>
</div>
<!-- breadcrumb end -->
<!-- cart-main-area start -->
<div class="cart-main-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <form action="#">
                    <div class="table-content table-responsive">
                        <input type="hidden" id="u_id" value="${user.uId}">
                        <table>
                            <thead>
                            <tr>
                                <th class="product-thumbnail">图片</th>
                                <th class="product-name">产品</th>
                                <th class="product-quantity">数量</th>
                                <th class="product-subtotal">总价￥</th>
                                <th class="product-subtotal">时间</th>
                                <th class="product-remove">状态</th>
                                <th class="product-remove">删除</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${list}" var="order">
                                <tr>
                                    <td class="product-thumbnail"><a href="/goods/product-details?fId=${order.FId}"><img
                                            src="/image/show?imageName=${order.FImage}" alt=""/></a>
                                    </td>
                                    <td class="product-name"><a href="#">${order.FName}</a></td>
                                    <td class="product-price">
                                        <span class="amount">${order.ONumber}</span>
                                    </td>
                                    <td class="product-subtotal">${order.FPrice*order.ONumber}</td>
                                    <td class="product-subtotal"><fmt:formatDate value="${order.ODate}" type="both" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></td>
                                    <c:choose>
                                        <c:when test="${order.OStatus==0}">
                                            <td class="product-subtotal">未支付<br><a href="/pay/index/${order.FPrice*order.ONumber}/${order.OId}">去支付</a></td>
                                        </c:when>
                                        <c:when test="${order.OStatus==1}">
                                            <td class="product-subtotal">已支付</td>
                                        </c:when>
                                    </c:choose>
                                    <td class="product-remove"><a href="javascript:void(0)"
                                                                  onclick="del_cart(${order.OId},${order.FId})"><i
                                            class="fa fa-times"></i></a></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-md-8 col-sm-7 col-xs-12">
                            <div class="buttons-cart">
                                <a href="/goods/shop">继续购物</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- cart-main-area end -->

<!-- footer start -->
<footer class="black-bg">
    <div class="footer-top-area ptb-60">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-4">
                    <div class="footer-widget">
                        <h3 class="footer-title">Contact info</h3>
                        <div class="footer-contact">
                            <ul>
                                <li><em class="fa fa-map-marker"></em>8901 Marmora Road, Glasgow <span>D04 89 GR, New York</span>
                                </li>
                                <li><em class="fa fa-phone"></em>Telephones: (+1) 866-540-3229 <span>Fax: (+1) 866-540-3229</span>
                                </li>
                                <li><em class="fa fa-envelope-o"></em>Email: support@posthemes.com</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-2 col-sm-4">
                    <div class="footer-widget">
                        <h3 class="footer-title">My account</h3>
                        <ul class="block-content">
                            <li><a href="#">My orders</a></li>
                            <li><a href="#">My credit slips</a></li>
                            <li><a href="#">Sitemap</a></li>
                            <li><a href="#">My addresses</a></li>
                            <li><a href="#">My personal info</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-2 col-sm-4">
                    <div class="footer-widget">
                        <h3 class="footer-title">Information</h3>
                        <ul class="block-content">
                            <li><a href="#">Contact us</a></li>
                            <li><a href="#">Discount</a></li>
                            <li><a href="#">Site map</a></li>
                            <li><a href="#">About us</a></li>
                            <li><a href="#">Custom service</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-2 col-sm-4 footer-sm">
                    <div class="footer-widget">
                        <h3 class="footer-title">OUR SERVICE</h3>
                        <ul class="block-content">
                            <li><a href="#">My orders</a></li>
                            <li><a href="#">My credit slips</a></li>
                            <li><a href="#">Sitemap</a></li>
                            <li><a href="#">My addresses</a></li>
                            <li><a href="#">My personal info</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3 col-sm-4 footer-sm">
                    <div class="footer-widget">
                        <h3 class="footer-title">OPENING TIME</h3>
                        <div class="footer-time">
                            <p><span class="ft-content"><span class="day">Monday - Friday</span><span class="time">9:00 - 22:00</span></span>
                            </p>
                            <p><span class="ft-content"><span class="day">Saturday</span><span class="time">10:00 - 24:00</span></span>
                            </p>
                            <p><span class="ft-content"><span class="day">Sunday</span><span
                                    class="time">12:00 - 24:00</span></span></p>
                            <p><span class="ft-content"><span class="day">Thursday</span><span class="time">Free Shipping</span></span>
                            </p>
                            <p><span class="ft-content"><span class="day">Friday</span><span
                                    class="time">sale of 30%</span></span></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- footer end -->

<script>

    function del_cart(oid,fid) {
        var uid = $("#u_id").val();
        var obj = {};
        obj.uId = parseInt(uid);
        obj.oId = oid;
        obj.fId = fid;
        var order = JSON.stringify(obj);
        $.ajax({
            type: "POST",
            url: "/order/deleteOrder",
            contentType: "application/json;charset=utf-8",
            data: order,
            success: function (msg) {
                alert("删除成功！")
                window.location.href = "/order/reOrder";
            }
        });
    }
</script>





<!-- jquery latest version -->
<script src="${pageContext.request.contextPath}/reScript/js/vendor/jquery-1.12.0.min.js"></script>
<!-- Bootstrap framework js -->
<script src="${pageContext.request.contextPath}/reScript/js/bootstrap.min.js"></script>
<!-- ajax-mail js -->
<script src="${pageContext.request.contextPath}/reScript/js/ajax-mail.js"></script>
<!-- owl.carousel js -->
<script src="${pageContext.request.contextPath}/reScript/js/owl.carousel.min.js"></script>
<!-- owl.carousel js -->
<script src="${pageContext.request.contextPath}/reScript/js/jquery-ui.min.js"></script>
<!-- jquery.nivo.slider js -->
<script src="${pageContext.request.contextPath}/reScript/js/jquery.nivo.slider.pack.js"></script>
<!-- All js plugins included in this file. -->
<script src="${pageContext.request.contextPath}/reScript/js/plugins.js"></script>
<!-- Main js file that contents all jQuery plugins activation. -->
<script src="${pageContext.request.contextPath}/reScript/js/main.js"></script>
</body>

</html>
