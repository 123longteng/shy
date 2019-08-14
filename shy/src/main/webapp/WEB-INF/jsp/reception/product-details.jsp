<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Product Details</title>
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
                                <li><a href="#">网页</a></li>
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
                                    <li><a href="/user/login">登陆</a></li>
                                    <li><a href="/user/login">退出</a></li>
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
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-5">
                <div class="product-zoom">
                    <!-- Tab panes -->
                    <div class="tab-pane" id="settings3">
                        <div class="pro-large-img">
                            <img src="/image/show?imageName=${furniture.fImage}" alt=""/>
                            <a class="popup-link" href="/image/show?imageName=${furniture.fImage}">View
                                larger <i class="fa fa-search-plus" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-7">
                <div class="product-details">
                    <h2 class="pro-d-title">${furniture.fName}</h2>
                    <div class="pro-ref">
                        <p>
                            <label></label>
                            <span></span>
                        </p>
                        <p>
                            <label>销量：</label>
                            <span>${furniture.fAmount}</span>
                        </p>
                    </div>
                    <div class="price-box">
                        <span class="price product-price">￥${furniture.fPrice}</span>
                        <span class="old-price product-price">￥${furniture.fPrice+50}</span>
                    </div>
                    <div class="short-desc">
                        <p>${furniture.fText}</p>
                    </div>
                    <div class="box-quantity">
                            <label>数量</label>
                            <input type="number" id="number" value="1" onclick="numb(this,this.value)"/>
                            <input type="hidden" id="f_id" value="${furniture.fId}">
                            <button id="add_cart">添加到购物车</button>
                    </div>
                    <div class="usefull_link_block">
                        <ul>
                            <li><a href="javascript:void(0)"><i class="fa fa-envelope-o"></i>分享</a></li>
                            <li><a href="javascript:void(0)"><i class="fa fa-print"></i>打印</a></li>
                            <li><a href="javascript:void(0)"><i class="fa fa-heart-o"></i> 加入愿望清单</a></li>
                        </ul>
                    </div>
                    <div class="select-size">
                            <label>尺寸 </label>
                            <select>
                                <option value="">5</option>
                                <option value="">6</option>
                                <option value="">7</option>
                                <option value="">8</option>
                                <option value="">9</option>
                            </select>
                    </div>
                    <div class="color-list">
                        <a href="#"></a>
                        <a href="#"></a>
                    </div>
                    <div class="share-icon">
                        <a class="twitter" href="#"><i class="fa fa-facebook"></i> facebook</a>
                        <a class="facebook" href="#"><i class="fa fa-twitter"></i> twitter</a>
                        <a class="google" href="#"><i class="fa fa-google-plus"></i> linkedin</a>
                        <a class="pinterest" href="#"><i class="fa fa-pinterest"></i> facebook</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
    function numb(obj,val) {
        obj.value = val = val > 0 ? val : 1;
    }
    $(document).ready(function () {
        $("#add_cart").click(function () {
            var number = $("#number").val();
            var fid = $("#f_id").val();
            var obj = {};
            obj.fId=fid;
            obj.cNumber=number;
            var cartvo = JSON.stringify(obj);
            $.ajax({
                type:"POST",
                url:"/cart/addCart",
                contentType:"application/json;charset=utf-8",
                data:cartvo,
                success:function (msg) {
                    if ("login"==msg){
                        window.location.href="../user/login";
                    }else{
                        alert("添加成功！");
                    }
                }
            })
        })
    })
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
