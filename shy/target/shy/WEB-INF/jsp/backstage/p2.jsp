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
    <![endif]-->
    <script src="${pageContext.request.contextPath}/bgScript/js/Chart.js" tppabs="js/Chart.js"></script>
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
                        </a>

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
                        </a>
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
                        </a>

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
                <div class="input-group line left">
                    <span class="input-group-addon" id="basic-addon2"><span class="glyphicon glyphicon-search"></span></span>
                    <input type="text" class="form-control" placeholder="输入关键字搜索" aria-describedby="basic-addon2">
                </div>
                <select class="form-control line left">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <a href="#" class=" btn btn-primary "><span>搜索</span></a>
                <br/><br/>
                <table class="table table-bordered table-striped text-center bg-info">
                    <thead >
                    <tr class="info">
                        <th class="text-center">订单号</th>
                        <th class="text-center">商品名</th>
                        <th class="text-center">数量</th>
                        <th class="text-center">日期</th>
                        <th class="text-center">订单状态</th>
                        <th class="text-center">备注</th>
                        <th class="text-center">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>mmss</td>
                        <td>小小</td>
                        <td>女</td>
                        <td>12345678901</td>
                        <td>无</td>
                        <td>
                            <a href="#" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#add1">添加</a>
                            <a href="#" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#edit">编辑</a>
                            <a href="#" class="btn btn-primary btn-sm" >删除</a>
                        </td>
                        <!-- Modal begin-->
                        <!--添加-->
                        <div class="modal fade" id="add1" tabindex="-1" role="dialog" aria-labelledby="add11">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
                                        <h4 class="modal-title" id="add11">添加</h4>
                                    </div>
                                    <div class="modal-body">
                                        <ul>
                                            <li>
                                                <label><span>序号 ：</span></label>
                                                <input type="text"/>
                                            </li>
                                            <li>
                                                <label><span>用户名 ：</span></label>
                                                <input type="text"/>
                                            </li>
                                            <li>
                                                <label><span>姓名 ：</span></label>
                                                <input type="text"/>
                                            </li>
                                            <li>
                                                <label><span>性别 ：</span></label>
                                                <input type="text"/>
                                            </li>
                                            <li>
                                                <label><span>身份证 ：</span></label>
                                                <input type="text"/>
                                            </li>
                                            <li>
                                                <label><span>职位 ：</span></label>
                                                <input type="text"/>
                                            </li>
                                            <li>
                                                <label><span>邮箱 ：</span></label>
                                                <input type="text"/>
                                            </li>
                                            <li>
                                                <label><span>备注 ：</span></label>
                                                <input type="text"/>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">取消</button>
                                        <button type="button" class="btn btn-primary btn-sm">保存</button>
                                    </div>
                                </div>
                            </div>
                        </div>
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
                                                <label><span>序号 ：</span></label>
                                                <input type="text"/>
                                            </li>
                                            <li>
                                                <label><span>用户名 ：</span></label>
                                                <input type="text"/>
                                            </li>
                                            <li>
                                                <label><span>姓名 ：</span></label>
                                                <input type="text"/>
                                            </li>
                                            <li>
                                                <label><span>性别 ：</span></label>
                                                <input type="text"/>
                                            </li>
                                            <li>
                                                <label><span>身份证 ：</span></label>
                                                <input type="text"/>
                                            </li>
                                            <li>
                                                <label><span>职位 ：</span></label>
                                                <input type="text"/>
                                            </li>
                                            <li>
                                                <label><span>邮箱 ：</span></label>
                                                <input type="text"/>
                                            </li>
                                            <li>
                                                <label><span>备注 ：</span></label>
                                                <input type="text"/>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">取消</button>
                                        <button type="button" class="btn btn-primary btn-sm">保存</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Modal end-->
                    </tr>

                    </tbody>
                </table>
                <ul class="pagination right">
                    <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a>
                    </li>
                    <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
                </ul>
            </div>
            <!--右侧内容结束-->
        </div>
    </div>
</section>

<footer class="bg-primary navbar-fixed-bottom">
    <p class="text-center text-white">版权所有&copy;MMSS</p>
</footer>

<script src="${pageContext.request.contextPath}/bgScript/js/jquery-1.11.3.js" tppabs="js/jquery-1.11.3.js"></script>
<script src="${pageContext.request.contextPath}/bgScript/js/bootstrap.js" tppabs="js/bootstrap.js"></script>
</body>
</html>