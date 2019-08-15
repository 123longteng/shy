<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="o" uri="http://www.opensymphony.com/oscache" %>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Shop</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
    ============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">

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
                        <a href="/cart/index"><b>购物车</b>(2)</a>
                        <ul>
                            <li>
                                <div class="cart-img">
                                    <a href="#"><img src="${pageContext.request.contextPath}/reScript/img/cart/1.jpg"
                                                     alt=""/></a>
                                </div>
                                <div class="cart-content">
                                    <h3><a href="#"> 塔 褐色</a></h3>
                                    <span><b>S, 橙色</b></span>
                                    <span class="cart-price">￥ 16.84</span>
                                </div>
                                <div class="cart-del">
                                    <i class="fa fa-times-circle"></i>
                                </div>
                            </li>
                            <li>
                                <div class="cart-img">
                                    <a href="#"><img src="${pageContext.request.contextPath}/reScript/img/cart/1.jpg"
                                                     alt=""/></a>
                                </div>
                                <div class="cart-content">
                                    <h3><a href="#"> 塔 褐色</a></h3>
                                    <span><b>S, 橙色</b></span>
                                    <span class="cart-price">￥ 16.84</span>
                                </div>
                                <div class="cart-del">
                                    <i class="fa fa-times-circle"></i>
                                </div>
                            </li>
                            <li>
                                <div class="shipping">
                                    <span class="f-left">运费 </span>
                                    <span class="f-right cart-price"> $7.00</span>
                                </div>
                                <hr class="shipping-border"/>
                                <div class="shipping">
                                    <span class="f-left"> 总计 </span>
                                    <span class="f-right cart-price">$692.00</span>
                                </div>
                            </li>
                            <li class="checkout m-0"><a href="#">查看 <i class="fa fa-angle-right"></i></a></li>
                        </ul>
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
<!-- shop-area start -->
<div class="shop-area">
    <form id="form_a" method="post" action="/goods/shop">
        <input type="hidden" name="pageNum" value="${pageInfo.pageNum}" id="pageNum">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-4">
                <div class="column">
                    <h2 class="title-block">目录</h2>
                    <div class="sidebar-widget">
                        <h3 class="sidebar-title">类型</h3>
                        <ul class="sidebar-menu">
                            <li><a href="#">椅子 <span></span></a></li>
                            <li><a href="#">桌子<span></span></a></li>
                        </ul>
                    </div>
                    <%--<div class="sidebar-widget">--%>
                    <%--<h3 class="sidebar-title">Condition</h3>--%>
                    <%--<ul class="sidebar-menu">--%>
                    <%--<li><a href="#">New <span>(11)</span></a></li>--%>
                    <%--</ul>--%>
                    <%--</div>--%>
                    <div class="sidebar-widget">
                        <h3 class="sidebar-title">生产厂家</h3>
                        <ul class="sidebar-menu">
                            <li><a href="#"> 时装制造商 <span></span></a></li>
                        </ul>
                    </div>
                    <div class="sidebar-widget">
                        <h3 class="sidebar-title">价格</h3>
                        <div class="price-filter">
                            <p>
                                <label for="amount">范围:</label>
                                <input type="text" id="amount" readonly
                                       style="border:0; color:#f6931f; font-weight:bold;">
                            </p>
                            <div id="slider-range"></div>
                        </div>
                    </div>
                    <div class="sidebar-widget">
                        <h3 class="sidebar-title">尺寸</h3>
                        <ul class="sidebar-menu">
                            <li><a href="#"> S <span>(13)</span></a></li>
                            <li><a href="#"> M <span>(15)</span></a></li>
                            <li><a href="#"> L <span>(6)</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-9 col-sm-8">
                <h2 class="page-heading mt-40">
                    <span class="cat-name">家具</span>
                    <span class="heading-counter">这里有${pageInfo.total}件商品</span>
                </h2>
                <div class="shop-page-bar">
                    <div>
                        <div class="shop-bar">
                            <!-- Nav tabs -->
                            <ul class="shop-tab f-left" role="tablist">
                                <li role="presentation" class="active"><a href="#home" data-toggle="tab"><i
                                        class="fa fa-th-large" aria-hidden="true"></i></a></li>
                                <li role="presentation"><a href="#profile" data-toggle="tab"><i class="fa fa-th-list"
                                                                                                aria-hidden="true"></i></a>
                                </li>
                            </ul>
                            <div class="selector-field f-left ml-20 hidden-xs">
                                <form action="#">
                                    <label>排序方式</label>
                                    <select name="select">
                                        <option value="">-----------------</option>
                                        <option value="">价格↑</option>
                                        <option value="">价格↓</option>
                                        <option value="">销量↑</option>
                                        <option value="">销量↓</option>
                                    </select>
                                </form>
                            </div>
                            <div class="selector-field f-left ml-30 hidden-xs">
                                    <label>节目</label>
                                    <select name="select">
                                        <option value="">12</option>
                                        <option value="">13</option>
                                        <option value="">14 </option>
                                    </select>
                            </div>
                        </div>
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="home">
                                <div class="row">
                                    <c:forEach items="${pageInfo.list}" var="furniture">
                                        <div class="col-md-4 col-sm-6">
                                            <div class="product-wrapper mb-40">
                                                <div class="product-img">
                                                    <a href="/goods/product-details?fId=${furniture.fId}"><img
                                                            src="${pageContext.request.contextPath}/reScript/img/product/7.jpg"
                                                            alt=""/></a>
                                                    <span class="new-label">新</span>
                                                    <div class="product-action">
                                                        <a href="#"><i class="pe-7s-cart"></i></a>
                                                        <a href="#"><i class="pe-7s-like"></i></a>
                                                        <a href="#"><i class="pe-7s-folder"></i></a>
                                                        <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                                class="pe-7s-look"></i></a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <div class="pro-title">
                                                        <h3><a href="/goods/product-details?fId=${furniture.fId}">${furniture.fName}</a></h3>
                                                    </div>
                                                    <div class="price-reviews">
                                                        <div class="price-box">
                                                            <span class="price product-price">￥${furniture.fPrice}</span>
                                                            <span class="old-price product-price">￥${furniture.fPrice+50}</span>
                                                        </div>
                                                        <div class="pro-rating">
                                                            <span>销量：</span>
                                                            <span>${furniture.fAmount}</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                                <div class="content-sortpagibar">
                                    <div class="product-count display-inline" style="width: 270px;height:10px;background-color: white;">
                                    </div>
                                    <ul class="shop-pagi display-inline">
                                        <li><a href="javascript:void(0)" onclick="pag(${pageInfo.hasPreviousPage?pageInfo.prePage:pageInfo.firstPage})"><i class="fa fa-angle-left"></i></a></li>
                                        <li><a>${pageInfo.pageNum}</a></li>
                                        <li><a>/</a></li>
                                        <li><a>${pageInfo.pages}</a></li>
                                        <li><a href="javascript:void(0)" onclick="pag(${pageInfo.hasNextPage?pageInfo.nextPage:pageInfo.lastPage})"><i class="fa fa-angle-right"></i></a></li>
                                    </ul>
                                    <div class="selector-field f-right"></div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="profile">
                                <c:forEach items="${list}" var="furniture">
                                    <div class="row mb-50">
                                        <div class="col-xs-5 col-sm-5 col-md-4">
                                            <div class="product-wrapper">
                                                <div class="product-img">
                                                    <a href="/goods/product-details?fId=${furniture.fId}"><img
                                                            src="${pageContext.request.contextPath}/reScript/img/product/4.jpg"
                                                            alt=""/></a>
                                                    <span class="new-label">新</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-7 col-sm-7 col-md-8">
                                            <div class="product-content product-list">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.jsp">${furniture.fName} </a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">￥${furniture.fPrice}</span>
                                                        <span class="old-price product-price">￥${furniture.fPrice+50}</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <span>销量：</span>
                                                        <span>${furniture.fAmount}</span>
                                                    </div>
                                                </div>
                                                <p>${furniture.fText}</p>
                                                <div class="product-action">
                                                    <a class="cart" href="/goods/product-details?fId=${furniture.fId}"><span>添加到购物车</span></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                                <div class="color-list">
                                                    <a href="#"></a>
                                                    <a href="#"></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</div>
<!-- shop-area end -->


<!-- brand-area start -->
<div class="brand-area">
    <div class="container">
        <div class="brand-sep ptb-50">
            <div class="row">
                <div class="brand-active">
                    <div class="col-lg-12">
                        <div class="single-brand">
                            <a href="#"><img src="${pageContext.request.contextPath}/reScript/img/brand/1.jpg" alt=""/></a>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="single-brand">
                            <a href="#"><img src="${pageContext.request.contextPath}/reScript/img/brand/2.jpg" alt=""/></a>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="single-brand">
                            <a href="#"><img src="${pageContext.request.contextPath}/reScript/img/brand/3.jpg" alt=""/></a>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="single-brand">
                            <a href="#"><img src="${pageContext.request.contextPath}/reScript/img/brand/4.jpg" alt=""/></a>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="single-brand">
                            <a href="#"><img src="${pageContext.request.contextPath}/reScript/img/brand/5.jpg" alt=""/></a>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="single-brand">
                            <a href="#"><img src="${pageContext.request.contextPath}/reScript/img/brand/1.jpg" alt=""/></a>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="single-brand">
                            <a href="#"><img src="${pageContext.request.contextPath}/reScript/img/brand/2.jpg" alt=""/></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- brand-area end -->
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
    function pag(page) {
        var pageNum = document.getElementById("pageNum");
        pageNum.value=page;
        document.getElementById("form_a").submit();
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
