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
		<title>文书查询</title>
		<link rel="stylesheet" type="text/css" href="css/top.css"/>
		<link rel="stylesheet" type="text/css" href="css/di.css"/>
		<script type="text/javascript" src="js/jquery.min.js" ></script>
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
				法兜婚姻
			</div>
			
			<!--导航栏-->
			<div class="top_right">
					<span class="tr_1">|&nbsp;<a href="index.jsp">首页</a>&nbsp;
						|&nbsp;<a href="login.jsp">登录</a>&nbsp;
						|&nbsp;<a href="register.html">注册</a>&nbsp;|
					</span>
					<span class="tr_2">
						 |&nbsp;<a href="index.jsp">首页</a>&nbsp;|
						欢迎你，<a href="edit_userinfo.jsp?id=6"><strong>${username}</strong></a>
						<a href="logout">退出登陆</a>
					</span>
					<input type="button" name="input1" value="${username}" class="input1"/>
			</div>
		</div>
		
		<!--<hr style="border: 1px solid black;"/>-->
		
		<div id="box">
		<!--文书查询表单提交-->
		<div id="box_1">
			
			<!--标题栏-->
			<div class="title">
				<div class="logo_1"><img src="img/logo_1.png"/></div>
				<p>文书查询</p>
			</div>
			<form action="" method="post" >
				<input type="text" class="text" placeholder="输入文书内容、关键字、案由、简单的问题描述" /><br />
				<input type="text" class="input_1" placeholder="法院名称" name="noc"/><br />
				<input type="text" class="input_2" placeholder="裁判日期-格式：如2017-03-01" name="rd"/><br />
				<select id="ch">
					<option value="" style="display: none;">法院层级</option>
					<option value="最高法院">最高法院</option>
					<option value="高级法院">高级法院</option>
					<option value="中级法院">中级法院</option>
					<option value="基层法院">基层法院</option>
				</select>
				<select id="dt">
					<option value="" style="display: none;">文书类型</option>
					<option value="判决书">判决书</option>
					<option value="裁定书">裁定书</option>
					<option value="调解书">调解书</option>
					<option value="决定书">决定书</option>
					<option value="通知书">通知书</option>
					<option value="批复">批复</option>
					<option value="答复">答复</option>
					<option value="涵">涵</option>
					<option value="其他">其他</option>
				</select>
				<br />
				<input type="submit" class="sure" value="搜  索"/>
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
