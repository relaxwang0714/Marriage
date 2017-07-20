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
    
    <title>My JSP 'show_userinfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <table width="800" border="1">
    <tr>
      <th width="46" scope="col">id</th>
      <th width="67" scope="col">地址</th>
      <th width="66" scope="col">年龄</th>
    </tr>
    <%
    	String sqlTxt = "select * from userdata";
    	ArrayList<UserInfo> alUsers = users.getUserInfo(sqlTxt);
    	for (int i = 0; i < alUsers.size(); i++){
 			UserInfo userInfo = alUsers.get(i);
     %>
    	<tr>
      		<td><%=userInfo.getId() %></td>
      		<td><%=userInfo.getAddress() %></td>
      		<td><%=userInfo.getPhone() %></td>
      		<td><%=userInfo.getAge() %></td>
      		<td><%=userInfo.getSex() %></td>
      	<td><a href="edit_userinfo.jsp?id=<%=userInfo.getId()%>">修改</a></td>
      	</tr>
      <%
      }
       %>
  </table>
  <br><br>
  </body>
</html>
