<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="user.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="users" class="user.UserLogic" scope="page"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <link rel="shortcut icon" href="img/favicon.ico" />
    <title>个人信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="css/reset.css" />
	<link rel="stylesheet" href="css/register.css" />
    <script type="text/javascript" src="js/jquery.min.js"></script>
  </head>
  <%
  		String id = request.getParameter("id");
    	String sqlTxt = "select * from userdata where id='" + id +"'";
    	ArrayList<UserInfo> alUsers =users.getUserInfo(sqlTxt);
    	UserInfo userInfo = alUsers.get(0);
     %>
  <body>
  <div class="page">
	<div class="loginwarrp">
		<div class="logo">个人信息</div>
        <div class="login_form">
			<form id="Login" name="Login" method="post" onsubmit="" action="servlet/EditUserInfo?id=<%=userInfo.getId()%>">
				<li class="login-item">
					<span>家庭住址：</span>
					<input type="text" id="address" name="address" class="login_input" value=<%=userInfo.getAddress() %>>
				</li>
				<li class="login-item">
					<span>联系电话：</span>
					<input type="text" id="phone" name="phone" class="login_input" value=<%=userInfo.getPhone() %>>
				</li>
				<li class="login-item">
					<span>年龄：</span>
					<input type="text" id="age" name="age" class="login_input" value=<%=userInfo.getAge() %>>
				</li>
				<li class="login-item">
					<span>性别：</span>
					<select name="sex" id="sex">
  	  					<%	if (userInfo.getSex().equals("女")){
  						 %>
				  	  		<option value="男">男</option>
				  	  		<option value="女" selected = "selected">女</option>
				  	  	<%
				  	  		}
				  	  		else{ 
				  	  	%>
				  	  		<option value="男" selected = "selected">男</option>
				  	  		<option value="女" >女</option>
				  	  	<%
				  	  		}
				  	  	 %>
    	 			</select>
				</li>
				<div class="clearfix"></div> 
				<li class="login-sub">
                    <input type="submit" name="submit" value="提交"/>
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
	</script>
	<script type="text/javascript" src="js/canvas-particle.js"></script>
  </body>
</html>
