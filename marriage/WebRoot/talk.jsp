<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <link rel="shortcut icon" href="img/favicon.ico" />
		<title>智能咨询</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/jquery-3.1.1.min.js" ></script>
	<script type="text/javascript" src="js/jquery.js" ></script>
	<link type="text/css" rel="stylesheet" href="css/talk.css">
	<script type="text/javascript" src="js/talk.js" ></script>

  </head>
  
  <body>
    <div class="bg">
		<div class="speak_window">
	<div class="speak_box">
		<div class="answer">
			<div class="heard_img left"><img src="img/touxiang1.jpg"></div>
			<div class="answer_text">
				<input type="hidden" value="<%=request.getParameter("number")%>" id="aaa"/>
				<p>你好！小凤梨机器人为你服务~<br/>你想搜索的是<strong><%=new String(request.getParameter("name").getBytes("ISO-8859-1"),"utf-8")%></strong><br/>请再继续告诉我你想要的内容^_^</p>
				<i></i>
			</div>
		</div>
	</div>
</div>
<div class="saying">
	<img src="img/saying.gif">
</div>
<div class="wenwen-footer">
	<div class="wenwen_btn left" onClick="to_write()"><img src="img/jp_btn.png"></div>
	<div class="wenwen_text left">
	    <div class="write_box">
	        <input type="text" class="left" onKeyUp="keyup()" placeholder="请输入关键字" />
	    </div>   
	    <!--<div class="circle-button" id="wenwen">
	        按住 说话
	    </div>-->
	</div>
	<div class="wenwen_help right">
	    <!--<a href="http://sc.chinaz.com/jiaoben/">
	        <img src="img/help_btn.png">
	    </a>-->
	    <button onClick="up_say()" class="right">发送</button>
	</div>
	<div style="opacity:0;" class="clear"></div>
</div>

</div>		
  </body>
</html>
