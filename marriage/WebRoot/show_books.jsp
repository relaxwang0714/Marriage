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
    
    <title>My JSP 'show_books.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <%
  		String id = request.getParameter("id");
    	String sqlTxt = "select * from hunyuecaichan where id='" + id +"'";
    	ArrayList<booksInfo> alBooks =books.getbooksInfo(sqlTxt);
    	booksInfo booksInfo = alBooks.get(0);
     %>
  <body>
    <%=booksInfo.getTitle() %><br>
    <%=booksInfo.getCourt() %>
  </body>
</html>
