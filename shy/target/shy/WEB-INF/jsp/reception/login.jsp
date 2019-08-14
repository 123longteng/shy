<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Login form with confirmation!</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/reScript/css/style.css">
</head>
<body>


<div class="overlay"></div>

<div class="container">
	<div class="loginBox">
		<div class="userImage">
			<img src="${pageContext.request.contextPath}/reScript/img/catFace.png">
		</div>
		<form id="loginForm">
			<div class="input-wrapper">
				<label>用户名:</label>
				<input type="text" id="username" name="" placeholder="请输入用户名">
				<div class="error-email"><div class="email-msg"></div><div class="triangle"></div></div>
			</div>
			<div class="input-wrapper">
				<label>密码:</label>
				<input type="password" id="password" name="" placeholder="密码">
				<div class="error-pass"><div class="pass-msg"></div><div class="triangle"></div></div>
			</div>
			<input type="button" name="" value="登录" onClick="log()">
			<%--<input type="button" name="" value="登录" onClick="validateForm()">--%>
		</form>
	</div>
</div>
<div class="confirmation showOk">
	<img src="${pageContext.request.contextPath}/reScript/img/gato.jpg">
</div>


<script>
    function log(){
        var username=$("#username").val();
        var pass=$("#password").val();
        var obj={};
        obj.uName=username;
        obj.uPass=pass;
        var user = JSON.stringify(obj);
        $.ajax({
            type:"POST",
            url:"/user/loginDo",
            contentType:"application/json;charset=utf-8",
            data:user,
            success:function (msg) {
                if(msg=="success"){
                    alert("登陆成功!");
                    window.location.href="/main/index";
                }else{
                    alert("登陆失败!");
                }
            }
        })
    }

</script>


<script src='${pageContext.request.contextPath}/reScript/js/jquery.min.js'></script>
<script src="${pageContext.request.contextPath}/reScript/js/script.js"></script>

</body>
</html>