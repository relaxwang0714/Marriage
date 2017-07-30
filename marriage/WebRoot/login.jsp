<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.sql.*" %>
<%@ page import="DB.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <link rel="shortcut icon" href="img/favicon.ico" />
    <title>登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	
	-->
	<link rel="stylesheet" href="css/reset.css" />
	<link rel="stylesheet" href="css/login.css" />
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/login.js"></script>
  </head>
  
  <body>
 
  <div class="page">
	<div class="loginwarrp">
		<div class="logo">律兜婚姻</div>
        <div class="login_form">
			<form id="Login" name="Login" method="post" onsubmit="" action="submit.jsp">
				<li class="login-item">
					<span>用户名称：</span>
					<input type="text" id="username" name="username" class="login_input" required="required">
                                        <span id="count-msg" class="error"></span>
				</li>
				<li class="login-item">
					<span>密　码：</span>
					<input type="password" id="password" name="password" class="login_input" >
                                        <span id="password-msg" class="error"></span>
				</li>
				<li class="login-item verify">
					<span>验证码：</span>
					<input type="text" name="r" class="login_input verify_input">
				</li>
				<img alt="random" src="randomcode.jpg" onclick="changeR(this)" style="cursor: pointer;" class="verifyimg">
				<div class="clearfix"></div> 
				<li class="login-sub">
					<input type="submit" name="submit" value="登录" />
                    <input type="button" name="button" value="注册" onclick="location.href='register.html'"/>
				</li>    
           </form>
		</div>
	</div>
</div>
<script type="text/javascript">
		window.onload = function() {
			var config = {
				vx : 4,
				vy : 4,
				height : 2,
				width : 2,
				count : 100,
				color : "121, 162, 185",
				stroke : "100, 200, 180",
				dist : 6000,
				e_dist : 20000,
				max_conn : 10
			}
			CanvasParticle(config);
		}
		function changeR(node){
		// 用于点击时产生不同的验证码
		node.src = "randomcode.jpg?time="+new Date().getTime() ;	
	}
	</script>
	<script type="text/javascript" src="js/canvas-particle.js"></script>
	 
  	
   
		
	
  </body>
</html>
