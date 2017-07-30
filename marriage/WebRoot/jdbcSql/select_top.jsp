<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'select_top.jsp' starting page</title>
    
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
	// 获取请求的上下文
	String context = request.getContextPath();
%>
	<link href="../css/pagination.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" type="text/css" href="../css/top.css"/>
		<link rel="stylesheet" type="text/css" href="../css/select_top.css"/>
<script type="text/javascript" src="../js/jquery-1.11.3.js"></script>
<script type="text/javascript">

function handlePaginationClick(new_page_index, pagination_container) {
    $("#stuForm").attr("action", "<%=context %>/jdbcSql/JdbcSqlServlet?pageNum=" + (new_page_index+1));
    $("#stuForm").submit();
    return false;
}
	// 设置法院默认级别
	$("#court_level").val("${court_level}");
</script>
  <body style="background-color: #f6f6f6;">
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
					<span>|&nbsp;&nbsp;<a href="index.jsp" target="_parent">首页</a>&nbsp;&nbsp;|</span>
				</ul>
			</div>
		</div>
		<hr style="width: 99.8%;border: 1px solid black;" />
		
		<!--查询筛选-->
		<div id="selected">
			<form action="<%=context %>/jdbcSql/JdbcSqlServlet"  id="stuForm"  method="post" target="contents">
				<input type="text" name="title" id="title" value="${title }" placeholder="输入标题">
				
				<select name="court_level" id="court_level">
					<option value="0">法院级别</option>
					<option value="0">全部</option>
					<option value="1">最高法院</option>
					<option value="2">高级法院</option>
					<option value="3">中级法院</option>
					<option value="4">基层法院</option>
				</select>
				
				<input type="submit" value="确定" id="submit">
			</form>
		</div>			
  </body>
</html>
