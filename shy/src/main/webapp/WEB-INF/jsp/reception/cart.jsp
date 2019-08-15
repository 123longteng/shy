<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Cart</title>
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

<script>
    window.onload=function () {
        var arr = document.getElementsByName("choose");
        for (var i in arr){
            arr[i].checked = false;
        }
    }
</script>


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
                                <th></th>
                                <th class="product-thumbnail">图片</th>
                                <th class="product-name">产品</th>
                                <th class="product-price">价格￥</th>
                                <th class="product-quantity">数量</th>
                                <th class="product-subtotal">总价￥</th>
                                <th class="product-remove">删除</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${pageInfo.list}" var="cart">
                                <tr>
                                    <td><input class="check_c" type="checkbox" name="choose" value=""
                                               style="width: 20px;height: 20px" onclick="chose(${cart.fPrice},this)"/>
                                        <input type="hidden" class="f_id" value="${cart.fId}">
                                    </td>
                                    <td class="product-thumbnail"><a href="/goods/product-details?fId=${cart.fId}"><img
                                            src="/image/show?imageName=${cart.fImage}" alt=""/></a>
                                    </td>
                                    <td class="product-name"><a href="#">${cart.fName}</a></td>
                                    <td class="product-price">
                                        <span class="amount">${cart.fPrice}</span>
                                    </td>
                                    <td class="product-quantity"><input class="number" type="number" value="${cart.cNumber}"
                                                                        onclick="nb(this.value,${cart.fPrice},this)"
                                                                        onblur="nb_up(${cart.fId},this.value)"/></td>
                                    <td class="product-subtotal">${cart.fPrice*cart.cNumber}</td>
                                    <td class="product-remove"><a href="javascript:void(0)"
                                                                  onclick="del_cart(${cart.fId})"><i
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
                        <div class="col-md-4 col-sm-5 col-xs-12">
                            <div class="cart_totals">
                                <h2>购物车总计</h2>
                                <table>
                                    <tbody>
                                    <tr class="order-total">
                                        <td>
                                            <strong><span class="amount" id="money">0.00</span></strong>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                                <div class="wc-proceed-to-checkout">
                                    <a href="javascript:void(0)" onclick="xia_dan()" class="btn btn-primary btn-sm"
                                       data-toggle="modal" data-target="#add1">结算</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- cart-main-area end -->
<!-- Modal begin-->
<!--添加-->
<div class="modal fade" id="add1" tabindex="-1" role="dialog" aria-labelledby="add11">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="add11">订单</h4>
            </div>
            <div class="modal-body">
                <form action="/order/add_order" id="form_o" method="post">
                <div id="body1" class="show" name="divcontent">
                    <dl class="content">
                        <dt>订单号 ：</dt>
                        <dd>
                            <input type="hidden" id="WIDbody" name="WIDbody" value=""/>
                            <input type="hidden" id="WIDsubject" name="WIDsubject" value="测试"/>
                            <input type="hidden" name="oId" id="oid">
                            <input type="text" name="oId" id="o_id" value="" style="height: 25px" disabled>
                        </dd>
                        <dt>商品总数 ：</dt>
                        <dd>
                            <input type="hidden" id="fid_num" name="idNum">
                            <input type="text" name="o_number" id="o_number" value="" style="height: 25px" disabled>
                        </dd>
                        <dt>付款金额 ：</dt>
                        <dd>
                            <input type="hidden" id="WIDtotal_amount" name="WIDtotal_amount" />
                            <input type="text" name="shop_m" id="shop_m" value="" style="height: 25px" disabled>
                        </dd>
                        <dt>下单时间 ：</dt>
                        <dd>
                            <input type="text" name="oDate" id="o_date" value="" style="height: 25px" disabled>
                            <input type="hidden" name="oDate" id="odate">
                        </dd>
                    </dl>
                </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary btn-sm" id="save" data-dismiss="modal" onclick="add_order()">保存</button>
            </div>
        </div>
    </div>
</div>
<!--Modal end-->


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

    function xia_dan() {
        var arr = document.getElementsByName("choose");
        var a = 0;
        for (var i in arr) {
            if (arr[i].checked == true) {
                a+=1;
            }
        }
        if (a!=0) {
            var num = 0;
            $(".number").each(function () {
                var b = this.parentNode.previousElementSibling.previousElementSibling.previousElementSibling.previousElementSibling.children[0].checked;//js方法找节点
                if(b==true){
                    num+=parseInt(this.value);
                }
            })
            var now=new Date();            //创建Date对象
            var year=now.getFullYear();    //获取年份
            var month=now.getMonth()+1;    //获取月份
            var date=now.getDate();        //获取日期
            var hour=now.getHours();    //获取小时
            var minu=now.getMinutes();    //获取分钟
            var sec=now.getSeconds();    //获取秒钟
            // var time=year+"-"+month+"-"+date;    //组合系统时间
            var time=year+"-"+month+"-"+date+" "+hour+":"+minu+":"+sec;    //组合系统时间
            var timestamp = new Date().getTime();
            var random = Math.floor(Math.random() * 10);
            $("#o_id").val(timestamp + random);
            $("#shop_m").val($("#money").html());
            $("#WIDtotal_amount").val($("#money").html());
            $("#o_date").val(time);
            $("#o_number").val(num);
        }else {
            alert("未选择！")
            window.location.href = "/cart/index";
        }
    }

    // var a = $(thi).parents('tr').find('.check_c').is(":checked");//jquery方法找节点
    function add_order() {
        var numbers="";
        $(".number").each(function () {
            var b = this.parentNode.previousElementSibling.previousElementSibling.previousElementSibling.previousElementSibling.children[0].checked;//js方法找节点
            if(b==true){
                numbers+=this.value+",";
            }
        })
        var fids="";
        $(".f_id").each(function () {
            var a = this.previousElementSibling.checked;//js方法找节点
            if(a==true){
                fids+=this.value+",";
            }
        })
        var id_num=fids+"/"+numbers;
        $("#fid_num").val(id_num);
        $("#oid").val( $("#o_id").val());
        $("#odate").val( $("#o_date").val());
        var form = document.getElementById("form_o");
        form.submit();

        // $.ajax({
        //     type: "POST",
        //     url: "/order/add_order",
        //     contentType: "application/json;charset=utf-8",
        //     data: id_num,
        //     success: function (msg) {
        //         alert("生成订单！");
        //     }
        // });
    }

    // //全选
    // $("#del").change(function () {
    //     var arr = document.getElementsByName("choose");
    //     for (var i in arr) {
    //         arr[i].checked = this.checked;
    //     }
    // })
    function chose(price, obj) {
        var number = obj.parentNode.nextElementSibling.nextElementSibling.nextElementSibling.nextElementSibling.children[0].value;
        var money1 = parseFloat(document.getElementById("money").innerText);
        if (obj.checked == true) {
            var money = parseFloat(price * number + money1).toFixed(2);
        } else {
            var money = parseFloat(money1 - (price * number)).toFixed(2);
        }
        document.getElementById("money").innerText = money;
    }

    function del_cart(fid) {
        var uid = $("#u_id").val();
        var obj = {};
        obj.uId = uid;
        obj.fId = fid;
        var cartvo = JSON.stringify(obj);
        $.ajax({
            type: "POST",
            url: "/cart/deleteCart",
            contentType: "application/json;charset=utf-8",
            data: cartvo,
            success: function (msg) {
                alert("删除成功！")
                window.location.href = "/cart/index";
            }
        });
    }

    function nb_up(fid, cnumber) {
        var uid = $("#u_id").val();
        var obj = {};
        obj.uId = uid;
        obj.fId = fid;
        obj.cNumber = cnumber;
        var cartvo = JSON.stringify(obj);
        $.ajax({
            type: "POST",
            url: "/cart/updateCartNum",
            contentType: "application/json;charset=utf-8",
            data: cartvo,
            success: function (msg) {
            }
        })
    }

    function nb(val, price, thi) {
        thi.value = val = val > 0 ? val : 1;
        var numPrice = parseFloat(val * price).toFixed(2);
        var next = thi.parentNode.nextElementSibling;
        var goodMoney = parseFloat(next.innerHTML).toFixed(2);
        var money;
        var money1 = parseFloat(document.getElementById("money").innerText);
        var statu = thi.parentNode.previousElementSibling.previousElementSibling.previousElementSibling.previousElementSibling.children[0];
        if (statu.checked == true) {
            if (numPrice > goodMoney) {
                var cha = numPrice - goodMoney;
                money = parseFloat(cha + money1).toFixed(2);
                document.getElementById("money").innerText = money;
            } else {
                var cha = goodMoney - numPrice;
                money = parseFloat(money1 - cha).toFixed(2);
                document.getElementById("money").innerText = money;
            }
        }
        next.innerHTML = numPrice;
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
