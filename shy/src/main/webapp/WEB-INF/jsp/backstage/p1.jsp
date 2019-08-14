<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="${pageContext.request.contextPath}/bgScript/img/logo.png"/>
    <title>四合院家具后台系统</title>
    <link href="${pageContext.request.contextPath}/bgScript/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bgScript/css/mmss.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bgScript/css/font-awesome.min.css"/>
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}/bgScript/js/html5shiv.min.js"></script>
    <script src="${pageContext.request.contextPath}/bgScript/js/respond.min.js"></script>
    <![endif]-->
    <style>

    </style>
</head>
<body>
<header>
    <div class="container-fluid navbar-fixed-top bg-primary">
        <ul class="nav navbar-nav  left">
            <li class="text-white h4">
                &nbsp;&nbsp;&nbsp;&nbsp;<b>四合院家具后台系统</b>
            </li>
        </ul>
        <ul class="nav navbar-nav nav-pills right ">
            <li class="bg-warning ">
                <a href="#"><span class="glyphicon glyphicon-tasks"></span><span class="badge">1</span></a>
            </li>
            <li class="bg-success">
                <a href="#"><span class="glyphicon glyphicon-envelope"></span><span class="badge">2</span></a>
            </li>
            <li class="bg-danger">
                <a href="#"><span class="glyphicon glyphicon-bell"></span></a>
            </li>
            <li class="bg-info dropdown">
                <a class="dropdown-toggle" href="#" data-toggle="dropdown">
                    <span class="glyphicon glyphicon-user"></span>&nbsp;<span>系统管理员</span><span class="caret"></span>
                </a>
                <ul class="dropdown-menu dropdown-menu-right">
                    <li class="text-center"><a href="#"><span class="text-primary">账号设置</span></a></li>
                    <li class="text-center"><a href="#"><span class="text-primary">消息设置</span></a></li>
                    <li class="text-center"><a href="#"><span class="text-primary">帮助中心</span></a></li>
                    <li class="divider"><a href="#"></a></li>
                    <li class="text-center"><a href="login.jsp" tppabs="login.html"><span class="text-primary">退出</span></a></li>
                </ul>
            </li>
        </ul>
    </div>
</header>

<section >
    <div class="container-fluid">
        <div class="row ">
            <!--左侧导航开始-->
            <div class="col-xs-2 bg-blue">
                <br/>
                <div class="panel-group sidebar-menu" id="accordion" aria-multiselectable="true">
                    <div class="panel panel-default menu-first menu-first-active">
                        <a data-toggle="collapse" data-parent="#accordion" aria-expanded="true"
                           aria-controls="collapseOne">
                            <i class="icon-home icon-large"></i> 主页
                        </a>
                    </div>
                    <div class="panel panel-default menu-first">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true"
                           aria-controls="collapseOne">
                            <i class="icon-user-md icon-large"></i> 商品管理</a>
                        <div id="collapseOne" class="panel-collapse collapse " >
                            <ul class="nav nav-list menu-second">
                                <li><a href="/goods/bgProducts"><i class="icon-user"></i> 商品列表</a></li>
                                <li><a href="p2.jsp"><i class="icon-edit"></i> 图表p2</a></li>
                                <li><a href="p3.jsp"><i class="icon-trash"></i> p3</a></li>
                                <li><a href="#"><i class="icon-list"></i> 子选项4</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="panel panel-default menu-first">
                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"
                           aria-expanded="false" aria-controls="collapseTwo">
                            <i class="icon-book icon-large"></i> 订单管理</a>
                        <div id="collapseTwo" class="panel-collapse collapse">
                            <ul class="nav nav-list menu-second">
                                <li><a href="/order/bgOrder"><i class="icon-user"></i> 订单列表</a></li>
                                <li><a href="#"><i class="icon-edit"></i> 子选项2</a></li>
                                <li><a href="#"><i class="icon-trash"></i> 子选项3</a></li>
                                <li><a href="#"><i class="icon-list"></i> 子选项4</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="panel panel-default menu-first">
                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree"
                           aria-expanded="false" aria-controls="collapseThree">
                            <i class="icon-book icon-large"></i> 用户管理</a>
                        <div id="collapseThree" class="panel-collapse collapse">
                            <ul class="nav nav-list menu-second">
                                <li><a href="/user/index"><i class="icon-user"></i> 用户列表</a></li>
                                <li><a href="#"><i class="icon-edit"></i> 子选项2</a></li>
                                <li><a href="#"><i class="icon-trash"></i> 子选项3</a></li>
                                <li><a href="#"><i class="icon-list"></i> 子选项4</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!--左侧导航结束-->
            <!----------------------------------------------------------------------------------------------------->
            <!--右侧内容开始-->
            <div class="col-xs-10">
                <br/>
                <ol class="breadcrumb">
                    <li class="active">&nbsp;<a href="/main/bgIndex">后台首页</a></li>
                    <li class="active">系统管理 - 表格</li>
                </ol>
                <form id="form_a" action="" method="post">
                    <input type="hidden" name="pageNum" id="page">
                    <div class="input-group line left">
                        <span class="input-group-addon" id="basic-addon2"><span class="glyphicon glyphicon-search"></span></span>
                        <input type="text" class="form-control" placeholder="用户名关键字搜索" aria-describedby="basic-addon2" value="${goodsVO.fName}" name="fName">
                    </div>
                    <a href="javascript:void(0)" onclick="act_a(${pageInfo.pageNum})" class=" btn btn-primary "><span>搜索</span></a>
                </form>
                <br/><br/>
                <table class="table table-bordered table-striped text-center bg-info">
                    <thead >
                    <tr class="info">
                        <th class="text-center">家具编号</th>
                        <th class="text-center">图片</th>
                        <th class="text-center">家具名</th>
                        <th class="text-center">销量</th>
                        <th class="text-center">价格</th>
                        <th class="text-center">数量</th>
                        <th class="text-center">长</th>
                        <th class="text-center">宽</th>
                        <th class="text-center">高</th>
                        <th class="text-center">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${pageInfo.list}" var="furniture">
                    <tr>
                        <td>${furniture.fId}</td>
                        <td><img src="/image/show?imageName=${furniture.fImage}" style="width: 46px;height: 38px;"></td>
                        <td>${furniture.fName}</td>
                        <td>${furniture.fAmount}</td>
                        <td>${furniture.fPrice}</td>
                        <td>${furniture.fNumber}</td>
                        <td>${furniture.fLong}</td>
                        <td>${furniture.fWide}</td>
                        <td>${furniture.fHigh}</td>
                        <td>
                            <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#add" onclick="qaq()">添加</button>
                            <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#edit" onclick="edit_a(${furniture.fId})">编辑</button>
                            <a href="javascript:void(0)" class="btn btn-primary btn-sm" onclick="dele(${furniture.fId})">删除</a>
                        </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <!-- 编辑-->
                <form id="update_a" action="/goods/update" method="post" enctype="multipart/form-data">
                <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="edit" aria-label="Close"></button>
                                <h4 class="modal-title" id="myModalLabel1">编辑</h4>
                            </div>
                            <div class="modal-body">
                                <ul>
                                    <li>
                                        <label><span>家具名 ：</span></label>
                                        <input type="text" name="fName" id="f_name"/>
                                    </li>
                                    <li>
                                        <label><span>销量 ：</span></label>
                                        <input type="text" name="fAmount" id="f_wood"/>
                                    </li>
                                    <li>
                                        <label><span>价格 ：</span></label>
                                        <input type="text" name="fPrice" id="f_price"/>
                                    </li>
                                    <li>
                                        <label><span>数量 ：</span></label>
                                        <input type="text" name="fNumber" id="f_number"/>
                                    </li>
                                    <li>
                                        <label><span>长 ：</span></label>
                                        <input type="text" name="fLong" id="f_long"/>
                                    </li>
                                    <li>
                                        <label><span>宽 ：</span></label>
                                        <input type="text" name="fWide" id="f_wide"/>
                                    </li>
                                    <li>
                                        <label><span>高 ：</span></label>
                                        <input type="text" name="fHigh" id="f_high"/>
                                    </li>
                                    <li>
                                        <label><span>图片 ：</span></label>
                                        <%--<input type="text" id="f_image_a"/>--%>
                                        <%--<INPUT id=img class=text type=file name=hImg>--%>
                                        <TD><INPUT class=text type=file name=fImage onchange="xmTanUploadImg(this)" id="f_image_uu"></TD></TR>
                                        <TR>
                                        <tr>
                                            <td><input type="image" id="f_image_u" style="width: 60px; height: 50px;" value=""></td>
                                        </tr>
                                    </li>
                                </ul>
                            </div>
                            <div class="modal-footer">
                                <input type="hidden" id="f_id" name="fId">
                                <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">取消</button>
                                <button type="button" class="btn btn-primary btn-sm" onclick="upd_upd()" data-dismiss="modal">保存</button>
                            </div>
                        </div>
                    </div>
                </div>
                </form>
                <!--end-->
                <!--添加-->
                <form id="add_a" action="/goods/save" method="post" enctype="multipart/form-data">
                <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="add11">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
                                <h4 class="modal-title" id="add11">添加</h4>
                            </div>
                            <div class="modal-body">
                                <ul>
                                    <li>
                                        <label><span>家具名 ：</span></label>
                                        <input type="text" name="fName" id="f_name_a"/>
                                    </li>
                                    <li>
                                        <label><span>销量 ：</span></label>
                                        <input type="text" name="fAmount" id="f_wood_a"/>
                                    </li>
                                    <li>
                                        <label><span>价格 ：</span></label>
                                        <input type="text" name="fPrice" id="f_price_a"/>
                                    </li>
                                    <li>
                                        <label><span>数量 ：</span></label>
                                        <input type="text" name="fNumber" id="f_number_a"/>
                                    </li>
                                    <li>
                                        <label><span>长 ：</span></label>
                                        <input type="text" name="fLong" id="f_long_a"/>
                                    </li>
                                    <li>
                                        <label><span>宽 ：</span></label>
                                        <input type="text" name="fWide" id="f_wide_a"/>
                                    </li>
                                    <li>
                                        <label><span>高 ：</span></label>
                                        <input type="text" name="fHigh" id="f_high_a"/>
                                    </li>
                                    <li>
                                        <label><span>图片 ：</span></label>
                                        <%--<input type="text" id="f_image_a"/>--%>
                                        <%--<INPUT id=img class=text type=file name=hImg>--%>
                                        <TD><INPUT class=text type=file name=fImage onchange="xmTanUploadImg(this)" id="f_image_aa"></TD></TR>
                                        <TR>
                                        <tr>
                                        <td><input type="image" id="f_image_ab" style="width: 60px; height: 50px;" value=""></td>
                                        </tr>
                                    </li>
                                </ul>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default btn-sm" id="clear" data-dismiss="modal">取消</button>
                                <button type="button" class="btn btn-primary btn-sm" id="save" data-dismiss="modal" onclick="add_add()">保存</button>
                            </div>
                        </div>
                    </div>
                </div>
                </form>
                <ul class="pagination right">
                    <li><button type="button" class="btn btn-default btn-sm" onclick="act_a(${pageInfo.hasPreviousPage?pageInfo.prePage:pageInfo.pageNum})">上一页</button></li>
                    <li>${pageInfo.pageNum}/${pageInfo.pages}</li>
                    <li><button type="button" class="btn btn-primary btn-sm"  onclick="act_a(${pageInfo.hasNextPage?pageInfo.nextPage:pageInfo.pageNum})">下一页</button></li>
                </ul>
            </div>
            <!--右侧内容结束-->
        </div>
    </div>
</section>

<footer class="bg-primary navbar-fixed-bottom">
    <p class="text-center text-white">版权所有&copy;MMSS</p>
</footer>


<script>

    //选择图片，马上预览
    function xmTanUploadImg(obj) {
        var imgab = document.getElementById("f_image_ab");
        var imgu = document.getElementById("f_image_u");
        var file = obj.files[0];
        var reader = new FileReader();
        reader.onload = function (e) {
            imgab.src = e.target.result;
            imgu.src = e.target.result;
        }
        reader.readAsDataURL(file);
    }

    function act_a(page) {
        var from = document.getElementById("form_a");
        var pageNum = document.getElementById("page");
        pageNum.value = page;
        // from.submit(page);
        $("#form_a").submit();
    }

    function edit_a(id) {
        $("#f_id").val(id);
        var img = document.getElementById("f_image_u");
        img.src=null;
        var obj={};
        obj.fId=id;
        var furniture=JSON.stringify(obj);
        $.ajax({
            type:"POST",
            url:"/goods/queryById",
            contentType:"application/json;charset=utf-8",
            data:furniture,
            success:function (msg) {
                var json = eval("("+msg+")"); // msg的值是json字符串，这行把字符串转成object
                $("#f_name").val(json.fName);
                $("#f_wood").val(json.fAmount);
                $("#f_price").val(json.fPrice);
                $("#f_number").val(json.fNumber);
                $("#f_long").val(json.fLong);
                $("#f_wide").val(json.fWide);
                $("#f_high").val(json.fHigh);
            }
        })
    }


    function qaq() {
        $("#f_name_a").val("");
        $("#f_wood_a").val("");
        $("#f_price_a").val("");
        $("#f_number_a").val("");
        $("#f_long_a").val("");
        $("#f_wide_a").val("");
        $("#f_high_a").val("");
        $("#f_image_aa").val("");
        // $("#f_image_ab").val("");
        var img = document.getElementById("f_image_ab");
        img.src=null;
    }


    function dele(id) {
        var obj = {};
        obj.fId=id;
        var furniture = JSON.stringify(obj);
        $.ajax({
            type:"POST",
            url:"/goods/delete",
            contentType:"application/json;charset=utf-8",
            data:furniture,
            success:function (msg) {
                alert("删除成功！");
                window.location.href="/goods/bgProducts";
            }
        })
    }

function add_add() {
    var from = document.getElementById("add_a");
    from.submit();
}
function upd_upd() {
    var from = document.getElementById("update_a");
    from.submit();
}




    // function update() {
    //     var fid = $("#f_id").val();
    //     var fname=$("#f_name").val();
    //     var fAmount=$("#f_wood").val();
    //     var fprice=$("#f_price").val();
    //     var fnumber=$("#f_number").val();
    //     var flong=$("#f_long").val();
    //     var fwide=$("#f_wide").val();
    //     var fhigh=$("#f_high").val();
    //     var fimage=$("#f_image").val();
    //     var obj={};
    //     obj.fId=fid;
    //     obj.fName=fname;
    //     obj.fAmount=fAmount;
    //     obj.fPrice=fprice;
    //     obj.fNumber=fnumber;
    //     obj.fLong=flong;
    //     obj.fWide=fwide;
    //     obj.fHigh=fhigh;
    //     obj.fImage=fimage;
    //     var furniture=JSON.stringify(obj);
    //     $.ajax({
    //         type:"POST",
    //         url:"/goods/update",
    //         contentType:"application/json;charset=utf-8",
    //         data:furniture,
    //         success:function (msg) {
    //             alert("修改成功！");
    //             window.location.href="/goods/bgProducts";
    //         }
    //     });
    // }
    //
    //
    // function add() {
    //     var fname=$("#f_name_a").val();
    //     var fAmount=$("#f_wood_a").val();
    //     var fprice=$("#f_price_a").val();
    //     var fnumber=$("#f_number_a").val();
    //     var flong=$("#f_long_a").val();
    //     var fwide=$("#f_wide_a").val();
    //     var fhigh=$("#f_high_a").val();
    //     // var fimage=$("#f_image_a").val();
    //     var obj={};
    //     obj.fName=fname;
    //     obj.fAmount=fAmount;
    //     obj.fPrice=fprice;
    //     obj.fNumber=fnumber;
    //     obj.fLong=flong;
    //     obj.fWide=fwide;
    //     obj.fHigh=fhigh;
    //     obj.fImage=fimage;
    //     var furniture=JSON.stringify(obj);
    //     alert(furniture);
    //     $.ajax({
    //         type:"POST",
    //         url:"/goods/save",
    //         contentType:"application/json;charset=utf-8",
    //         data:furniture,
    //         processData: false,
    //         success:function (msg) {
    //             alert("添加成功！");
    //             window.location.href="/goods/bgProducts";
    //         }
    //     });
    // }
</script>

<script src="${pageContext.request.contextPath}/bgScript/js/jquery-1.11.3.js" ></script>
<script src="${pageContext.request.contextPath}/bgScript/js/bootstrap.js" ></script>
<%--<script>--%>
    <%--/*Bootlint工具用于对页面中的HTML标签以及Bootstrapclass的使用进行检测*/--%>
    <%--(function () {--%>
        <%--var s = document.createElement("script");--%>
        <%--s.onload = function () {--%>
            <%--bootlint.showLintReportForCurrentDocument([]);--%>
        <%--};--%>
        <%--s.src = "js/bootlint.js"/*tpa=js/bootlint.js*/;--%>
        <%--document.body.appendChild(s)--%>
    <%--})();--%>

<%--//    添加编辑模态框--%>
    <%--$('#add').on('show.bs.modal', function (event) {--%>
        <%--var button = $(event.relatedTarget) // Button that triggered the modal--%>
        <%--var recipient = button.data('whatever') // Extract info from data-* attributes--%>
        <%--// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).--%>
        <%--// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.--%>
        <%--var modal = $(this)--%>
        <%--modal.find('.modal-title').text('' + recipient)--%>
        <%--modal.find('.modal-body input').val(recipient)--%>
    <%--})--%>
<%--</script>--%>
</body>
</html>