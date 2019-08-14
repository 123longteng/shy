<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="img/logo.png"/>
    <title>四合院家具后台系统</title>
    <link href="${pageContext.request.contextPath}/bgScript/css/bootstrap.css" tppabs="css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bgScript/css/mmss.css" tppabs="css/mmss.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bgScript/css/font-awesome.min.css" tppabs="css/font-awesome.min.css"/>
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}/bgScript/js/html5shiv.min.js" tppabs="js/html5shiv.min.js"></script>
    <script src="${pageContext.request.contextPath}/bgScript/js/respond.min.js" tppabs="js/respond.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
    <![endif]-->
    <style>

    </style>
</head>
<body>
<header>
    <div class="container-fluid navbar-fixed-top bg-primary">
        <ul class="nav navbar-nav  left">
            <li class="text-white h4">
                &nbsp;&nbsp;&nbsp;&nbsp;四合院家具后台系统</b>
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
                    <input type="text" class="form-control" placeholder="输入用户名关键字搜索" aria-describedby="basic-addon2" value="${userVO.name}" name="name">
                </div>
                <a href="javascript:void(0)" onclick="act_a(${pageInfo.pageNum})" class=" btn btn-primary "><span>搜索</span></a>
                </form>
                <br/><br/>
                <table class="table table-bordered table-striped text-center bg-info">
                    <thead >
                    <tr class="info">
                        <th class="text-center">用户ID</th>
                        <th class="text-center">用户名</th>
                        <th class="text-center">电话</th>
                        <th class="text-center">地址</th>
                        <th class="text-center">备注</th>
                        <th class="text-center">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${pageInfo.list}" var="user">
                    <tr>
                        <td>${user.uId}</td>
                        <td>${user.uName}</td>
                        <td>${user.uTell}</td>
                        <td>${user.uAddress}</td>
                        <td>无</td>
                        <td>
                            <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#add" onclick="qaq()">添加</button>
                            <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#edit" onclick="edit_a(${user.uId})">编辑</button>
                            <a href="javascript:void(0)" class="btn btn-primary btn-sm" onclick="dele(${user.uId})">删除</a>
                        </td>

                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <!-- 编辑-->
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
                                        <label><span>用户名 ：</span></label>
                                        <input type="text" id="user_name_a"/>
                                    </li>
                                    <li>
                                        <label><span>密码 ：</span></label>
                                        <input type="password" id="user_pass_a"/>
                                    </li>
                                    <li>
                                        <label><span>电话 ：</span></label>
                                        <input type="text" id="user_tell_a"/>
                                    </li>
                                    <li>
                                        <label><span>地址 ：</span></label>
                                        <input type="text" id="user_address_a"/>
                                    </li>
                                </ul>
                            </div>
                            <div class="modal-footer">
                                <input type="hidden" id="user_id_a">
                                <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">取消</button>
                                <button type="button" class="btn btn-primary btn-sm" onclick="update()" data-dismiss="modal">保存</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!--end-->
                <!--添加-->
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
                                        <label><span>用户名 ：</span></label>
                                        <input type="text" id="user_name"/>
                                    </li>
                                    <li>
                                        <label><span>密码 ：</span></label>
                                        <input type="password" id="user_pass"/>
                                    </li>
                                    <li>
                                        <label><span>电话 ：</span></label>
                                        <input type="text" id="user_tell"/>
                                    </li>
                                    <li>
                                        <label><span>地址 ：</span></label>
                                        <input type="text" id="user_address"/>
                                    </li>
                                </ul>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default btn-sm" id="clear" data-dismiss="modal">取消</button>
                                <button type="button" class="btn btn-primary btn-sm" onclick="add()" id="save" data-dismiss="modal">保存</button>
                            </div>
                        </div>
                    </div>
                </div>
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

function act_a(page) {
    var from = document.getElementById("form_a");
    var pageNum = document.getElementById("page");
    pageNum.value = page;
    // from.submit(page);
    $("#form_a").submit();
}

function edit_a(id) {
    var obj={};
    obj.uId=id;
    var user=JSON.stringify(obj);
    $.ajax({
        type:"POST",
        url:"/user/queryById",
        contentType:"application/json;charset=utf-8",
        data:user,
        success:function (msg) {
            var json = eval("("+msg+")"); // msg的值是json字符串，这行把字符串转成object
            $("#user_name_a").val(json.uName);
            $("#user_pass_a").val(json.uPass);
            $("#user_tell_a").val(json.uTell);
            $("#user_address_a").val(json.uAddress);
            $("#user_id_a").val(json.uId);
        }
    })
}


function update() {
    var uid = $("#user_id_a").val();
    var username=$("#user_name_a").val();
    var userpass=$("#user_pass_a").val();
    var usertell=$("#user_tell_a").val();
    var useraddress=$("#user_address_a").val();
    var obj={};
    obj.uId=uid;
    obj.uName=username;
    obj.uPass=userpass;
    obj.uTell=usertell;
    obj.uAddress=useraddress;
    var user=JSON.stringify(obj);
    $.ajax({
        type:"POST",
        url:"/user/update",
        contentType:"application/json;charset=utf-8",
        data:user,
        success:function (msg) {
            alert("修改成功！");
            window.location.href="/user/index";
        }
    });
}

function qaq() {
    $("#user_name").val("");
    $("#user_pass").val("");
    $("#user_tell").val("");
    $("#user_address").val("");
}
function add() {
    var username=$("#user_name").val();
    var userpass=$("#user_pass").val();
    var usertell=$("#user_tell").val();
    var useraddress=$("#user_address").val();
    var obj={};
    obj.name=username;
    obj.pass=userpass;
    obj.tell=usertell;
    obj.address=useraddress;
    var user=JSON.stringify(obj);
    $.ajax({
        type:"POST",
        url:"/user/save",
        contentType:"application/json;charset=utf-8",
        data:user,
        success:function (msg) {
            alert("添加成功！");
            window.location.href="/user/index";
        }
    });
}

function dele(id) {
    var obj = {};
    obj.uId=id;
    var user = JSON.stringify(obj);
    $.ajax({
        type:"POST",
        url:"/user/delete",
        contentType:"application/json;charset=utf-8",
        data:user,
        success:function (msg) {
            alert("删除成功！");
            window.location.href="/user/index";
        }
    })
}
</script>


















<script src="${pageContext.request.contextPath}/bgScript/js/jquery-1.11.3.js"></script>
<script src="${pageContext.request.contextPath}/bgScript/js/bootstrap.js"></script>
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
<%--</script>--%>
</body>
</html>