<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="o" uri="http://www.opensymphony.com/oscache" %>
<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Home</title>
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
<o:cache>
<!-- header start -->
<header class="header-pos">
	<div class="header-area header-middle">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-2 col-sm-3 col-xs-12">
					<div class="logo">
						<a href="index.jsp"><img src="${pageContext.request.contextPath}/reScript/img/logo/logo.jpg" alt="" /></a>
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
								<input type="text" placeholder="Search" />
								<button class="button-search"></button>
							</form>
						</div>
					</div>
					<div class="shopping-cart ml-20 display-inline">
						<a href="/cart/index"><b>购物车</b>(2)</a>
						<ul>
							<li>
								<div class="cart-img">
									<a href="#"><img src="${pageContext.request.contextPath}/reScript/img/cart/1.jpg" alt="" /></a>
								</div>
								<div class="cart-content">
									<h3><a href="#"> 塔 褐色</a> </h3>
									<span><b>S, 橙色</b></span>
									<span class="cart-price">￥ 16.84</span>
								</div>
								<div class="cart-del">
									<i class="fa fa-times-circle"></i>
								</div>
							</li>
							<li>
								<div class="cart-img">
									<a href="#"><img src="${pageContext.request.contextPath}/reScript/img/cart/1.jpg" alt="" /></a>
								</div>
								<div class="cart-content">
									<h3><a href="#"> 塔 褐色</a> </h3>
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
								<hr class="shipping-border" />
								<div class="shipping">
									<span class="f-left"> 总计 </span>
									<span class="f-right cart-price">$692.00</span>
								</div>
							</li>
							<li class="checkout m-0"><a href="/cart/index">查看 <i class="fa fa-angle-right"></i></a></li>
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
<!-- slider-container start -->
<div class="slider-container">
	<!-- slider滑块 Image -->
	<div id="mainSlider" class="nivoSlider slider-image">
		<img src="${pageContext.request.contextPath}/reScript/img/slider/1.jpg" alt="" title="#htmlcaption1">
		<img src="${pageContext.request.contextPath}/reScript/img/slider/2.jpg" alt="" title="#htmlcaption2">
	</div>
	<!-- Slider Caption 1 -->
	<div id="htmlcaption1" class="nivo-html-caption slider-caption-1">
		<div class="container">
			<div class="slide1-text">
				<div class="middle-text">
					<div class="cap-dec cap-1 wow bounceInRight" data-wow-duration="0.9s" data-wow-delay="0s">
						<h2>一个品牌</h2>
					</div>
					<div class="cap-dec cap-2 wow bounceInRight" data-wow-duration="1.2s" data-wow-delay="0.2s">
						<h2>新抵达</h2>
					</div>
					<div class="cap-text wow bounceInRight" data-wow-duration="1.2s" data-wow-delay="0.3s">
						迷人的户外休闲椅与木椅户外创意与户外躺椅。
					</div>
					<div class="cap-readmore wow bounceInUp" data-wow-duration="1.3s" data-wow-delay=".5s">
						<a href="#">购物</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Slider Caption 2 -->
	<div id="htmlcaption2" class="nivo-html-caption slider-caption-2">
		<div class="container">
			<div class="slide1-text">
				<div class="middle-text">
					<div class="cap-dec cap-1 wow bounceInRight" data-wow-duration="0.9s" data-wow-delay="0s">
						<h2>一个品牌</h2>
					</div>
					<div class="cap-dec cap-2 wow bounceInRight" data-wow-duration="1.2s" data-wow-delay="0.2s">
						<h2>新抵达</h2>
					</div>
					<div class="cap-text wow bounceInRight" data-wow-duration="1.2s" data-wow-delay="0.3s">
						迷人的户外休闲椅与木椅户外创意与户外躺椅。
					</div>
					<div class="cap-readmore wow bounceInUp" data-wow-duration="1.3s" data-wow-delay=".5s">
						<a href="#">购物</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- slider-container end -->
<!-- banner-area start -->
<div class="banner-area pt-70">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-sm-6">
				<div class="single-banner">
					<a href="#"><img src="${pageContext.request.contextPath}/reScript/img/banner/1.jpg" alt="" /></a>
				</div>
			</div>
			<div class="col-md-6 col-sm-6">
				<div class="single-banner">
					<a href="#"><img src="${pageContext.request.contextPath}/reScript/img/banner/2.jpg" alt="" /></a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- banner-area end -->
<!-- new-arrival-area start -->
<div class="new-arrival-area pt-100">
	<div class="container">
		<div class="row">
			<div class="section-title text-center mb-20">
				<h2>new arrivals</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="product-tab">
					<!-- Nav tabs -->
					<ul class="custom-tab text-center mb-40">
						<li class="active"><a href="#home" data-toggle="tab">沙发</a></li>
						<li><a href="#profile" data-toggle="tab"> 椅子</a></li>
						<li><a href="#messages" data-toggle="tab"> 桌子</a></li>
						<li><a href="#settings" data-toggle="tab"> 拍卖</a></li>
						<li><a href="#new" data-toggle="tab">  新品</a></li>
					</ul>
					<!-- Tab panes -->
					<div class="row">
						<div class="tab-content">
							<div class="tab-pane active" id="home">
								<div class="product-carousel">
									<c:forEach items="${pageInfo.list}" var="furniture">
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="/goods/product-details?fId=${furniture.fId}"><img src="${pageContext.request.contextPath}/reScript/img/product/12.jpg" alt="" /></a>
												<span class="new-label">新</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.jsp">${furniture.fName}</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">￥${furniture.fPrice}</span>
														<span class="old-price product-price">￥${furniture.fPrice+50}</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
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
	</div>
</div>
<!-- new-arrival-area end -->
<!-- best-sell-area start -->
<div class="best-sell-area pt-30">
	<div class="container">
		<div class="row">
			<div class="section-title text-center mb-50">
				<h2>畅销产品 </h2>
			</div>
		</div>
		<div class="row">
			<div class="product-carousel">
				<div class="col-md-12">
					<div class="product-wrapper mb-40">
						<div class="product-img">
							<a href="#"><img src="${pageContext.request.contextPath}/reScript/img/product/12.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.jsp">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="product-wrapper mb-40 mrg-nn-xs">
						<div class="product-img">
							<a href="#"><img src="${pageContext.request.contextPath}/reScript/img/product/11.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.jsp">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="product-wrapper mb-40">
						<div class="product-img">
							<a href="#"><img src="${pageContext.request.contextPath}/reScript/img/product/3.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.jsp">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="product-wrapper mb-40 mrg-nn-xs">
						<div class="product-img">
							<a href="#"><img src="${pageContext.request.contextPath}/reScript/img/product/1.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.jsp">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="product-wrapper mb-40">
						<div class="product-img">
							<a href="#"><img src="${pageContext.request.contextPath}/reScript/img/product/4.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.jsp">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="product-wrapper mb-40 mrg-nn-xs">
						<div class="product-img">
							<a href="#"><img src="${pageContext.request.contextPath}/reScript/img/product/11.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.jsp">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="product-wrapper mb-40">
						<div class="product-img">
							<a href="#"><img src="${pageContext.request.contextPath}/reScript/img/product/5.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.jsp">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="product-wrapper mb-40 mrg-nn-xs">
						<div class="product-img">
							<a href="#"><img src="${pageContext.request.contextPath}/reScript/img/product/10.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.jsp">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="product-wrapper mb-40">
						<div class="product-img">
							<a href="#"><img src="${pageContext.request.contextPath}/reScript/img/product/5.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.jsp">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="product-wrapper mb-40 mrg-nn-xs">
						<div class="product-img">
							<a href="#"><img src="${pageContext.request.contextPath}/reScript/img/product/9.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.jsp">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="product-wrapper mb-40">
						<div class="product-img">
							<a href="#"><img src="${pageContext.request.contextPath}/reScript/img/product/6.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.jsp">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="product-wrapper mb-40 mrg-nn-xs">
						<div class="product-img">
							<a href="#"><img src="${pageContext.request.contextPath}/reScript/img/product/9.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.jsp">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="product-wrapper mb-40">
						<div class="product-img">
							<a href="#"><img src="${pageContext.request.contextPath}/reScript/img/product/7.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.jsp">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="product-wrapper mb-40 mrg-nn-xs">
						<div class="product-img">
							<a href="#"><img src="${pageContext.request.contextPath}/reScript/img/product/8.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.jsp">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- best-sell-area end -->

<!-- brand-area start -->
<div class="brand-area">
	<div class="container">
		<div class="brand-sep ptb-50">
			<div class="row">
				<div class="brand-active">
					<div class="col-lg-12">
						<div class="single-brand">
							<a href="#"><img src="${pageContext.request.contextPath}/reScript/img/brand/1.jpg" alt="" /></a>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="single-brand">
							<a href="#"><img src="${pageContext.request.contextPath}/reScript/img/brand/2.jpg" alt="" /></a>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="single-brand">
							<a href="#"><img src="${pageContext.request.contextPath}/reScript/img/brand/3.jpg" alt="" /></a>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="single-brand">
							<a href="#"><img src="${pageContext.request.contextPath}/reScript/img/brand/4.jpg" alt="" /></a>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="single-brand">
							<a href="#"><img src="${pageContext.request.contextPath}/reScript/img/brand/5.jpg" alt="" /></a>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="single-brand">
							<a href="#"><img src="${pageContext.request.contextPath}/reScript/img/brand/1.jpg" alt="" /></a>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="single-brand">
							<a href="#"><img src="${pageContext.request.contextPath}/reScript/img/brand/2.jpg" alt="" /></a>
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
								<li><em class="fa fa-map-marker"></em>8901 Marmora Road, Glasgow <span>D04 89 GR, New York</span></li>
								<li><em class="fa fa-phone"></em>Telephones: (+1) 866-540-3229 <span>Fax: (+1) 866-540-3229</span></li>
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
							<p><span class="ft-content"><span class="day">Monday - Friday</span><span class="time">9:00 - 22:00</span></span></p>
							<p><span class="ft-content"><span class="day">Saturday</span><span class="time">10:00 - 24:00</span></span></p>
							<p><span class="ft-content"><span class="day">Sunday</span><span class="time">12:00 - 24:00</span></span></p>
							<p><span class="ft-content"><span class="day">Thursday</span><span class="time">Free Shipping</span></span></p>
							<p><span class="ft-content"><span class="day">Friday</span><span class="time">sale of 30%</span></span></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
<!-- footer end -->
</o:cache>


<!-- jquery latest version -->
<script src="${pageContext.request.contextPath}/reScript/js/vendor/jquery-1.12.0.min.js"></script>
<!-- Bootstrap framework js -->
<script src="${pageContext.request.contextPath}/reScript/js/bootstrap.min.js"></script>
<!-- ajax-mail js -->
<script src="${pageContext.request.contextPath}/reScript/js/ajax-mail.js"></script>
<!-- owl.carousel js -->
<script src="${pageContext.request.contextPath}/reScript/js/owl.carousel.min.js"></script>
<!-- jquery.nivo.slider js -->
<script src="${pageContext.request.contextPath}/reScript/js/jquery.nivo.slider.pack.js"></script>
<!-- All js plugins included in this file. -->
<script src="${pageContext.request.contextPath}/reScript/js/plugins.js"></script>
<!-- Main js file that contents all jQuery plugins activation. -->
<script src="${pageContext.request.contextPath}/reScript/js/main.js"></script>
</body>
</html>
