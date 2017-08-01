<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<meta charset="UTF-8">
		<link rel="shortcut icon" href="img/favicon.ico" />
		<title>法条查询</title>
		<link rel="stylesheet" type="text/css" href="css/top.css"/>
		<link rel="stylesheet" type="text/css" href="css/articleConsulting.css"/>
		<link rel="stylesheet" href="css/zebra_tooltips.css" type="text/css">
		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/zebra_tooltips.js"></script>
		<script type="text/javascript">
			$(function() {
				var a=$('#top .top_right .input1').val();
				if(a==""){
					$('#top .top_right .tr_2').hide();
					$('#top .top_right .tr_1').show();
					$('#top .top_right .input1').hide();
				}else{
					$('#top .top_right .tr_1').hide();
					$('#top .top_right .tr_2').show();
					$('#top .top_right .input1').hide();
				}
				
			});
			$(document).ready(function() {
					new $.Zebra_Tooltips($('.zebra_tips1'));
				});
		</script>
	</head>
	<body>
		<!--最顶部-->
		<div id="head">
			
		</div>
		
		<!--顶部-->
		<div id="top">
			
			<!--logo站名-->
			<div class="top_left">
				律兜婚姻
			</div>
			
			<!--导航栏-->
			<div class="top_right">
					<span class="tr_1">|&nbsp;<a href="index.jsp">首页</a>&nbsp;
						|&nbsp;<a href="login.jsp">登录</a>&nbsp;
						|&nbsp;<a href="register.html">注册</a>&nbsp;|
					</span>
					<span class="tr_2">
						 |&nbsp;<a href="index.jsp">首页</a>&nbsp;|
						欢迎你，<a href="edit_userinfo.jsp?id=6" class="zebra_tips1" title="点击查看/修改个人资料"><strong>${username}</strong></a>
						<a href="logout">退出登录</a>
					</span>
					<input type="button" name="input1" value="${username}" class="input1"/>
			</div>
		</div>
		
		<!--法条查询-->
		<div id="content">
			<div class="ac">
				<p></p>
				<p></p>
				<center>
					<img src="img/logo_1.png"/>
					<span class="span1">法条查询</span>
				</center>
				<form method="post">
					<div class="form">
						<input type="text" class="text" placeholder="请输入您要查询的信息"/>
						<input type="submit" value="搜索" class="submit"/>
					</div>
					
				</form>
			</div>
		</div>
		
		<!--底部开发者信息-->
		<div id="f">
		<div id="foot">
			<div class="footer">
				<div class="foot_left">
					<div class="fi"><div class="fi_pic"><img src="img/foot_1.png"></div></div>
					<div class="fi"><div class="fi_pic"><img src="img/foot_2.png"></div></div>
					<div class="fi"><div class="fi_pic"><img src="img/foot_3.png"></div></div>
				</div>
				<div class="foot_middle">
					<div class="font_1">公司地址:&nbsp;无锡梁溪区新惠路18号</div>
					<div class="font_1">客服电话:&nbsp;4008591580</div>
					<div class="font_1"><pre>邮箱: hr@ilvdo.com  新浪微博: @ 律兜</pre></div>
				</div>
				<div class="font_2">
					<pre>		COPYRIGHT © 2009-2017 ilvdo.com, All Rights Reserved 苏ICP备12060410号-1  经营许可证编号：苏B2-20162058</pre>
				</div>
			</div>
		</div>
		<div id="fr">
				<div class="fr_pic">
					<img src="img/foot_4.png"><br />
					<center><span class="fr_font">律兜</span></center>
				</div>
		</div>
		<div id="body_bottom">
			<ul>
				<li class="shouye">首页</li>
				<li>关于我们</li>
				<li>网页版</li>
				<li>企业版</li>
				<li>新闻中心</li>
			</ul>
		</div>
		</div>
	</body>
</html>