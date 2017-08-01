<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="books.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="books" class="books.booksLogic" scope="page"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <link rel="shortcut icon" href="img/favicon.ico" />
		<title>具体信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/top.css"/>
		<link rel="stylesheet" type="text/css" href="css/show.css">
  </head>
  <%
  		String id = request.getParameter("id");
    	String sqlTxt = "select * from hunyuecaichan where id='" + id +"'";
    	ArrayList<booksInfo> alBooks =books.getbooksInfo(sqlTxt);
    	booksInfo booksInfo = alBooks.get(0);
     %>
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
					<span>|&nbsp;&nbsp;<a href="index.jsp">首页</a>&nbsp;&nbsp;|</span>
			</div>
		</div>
		
		<div id="w_page">
		<div id="page">
		<div class="page_top">
			<strong><%=booksInfo.getTitle() %></strong>
		</div>
		<div class="title">
			<div class="title_left">
				日期：<%=booksInfo.getTime() %>
			</div>
			<div class="title_right">
				<%=booksInfo.getCourt() %>
			</div>
		</div>
		<div class="page_content">
			<strong>
				<%=booksInfo.getContent() %>
			</strong>
		</div>
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
