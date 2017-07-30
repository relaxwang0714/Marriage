<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'sublistBooks.jsp' starting page</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <%
	// 获取请求的上下文
	String context = request.getContextPath();
%>
	<link href="../css/pagination.css" rel="stylesheet" type="text/css"/>
		<link rel="stylesheet" type="text/css" href="../css/jdbcSqlBooks.css"/>
<script type="text/javascript" src="../js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="../js/jquery.pagination.js"></script>
<script type="text/javascript">
function handlePaginationClick(new_page_index, pagination_container) {
    $("#stuForm").attr("action", "<%=context %>/jdbcSql/JdbcSqlServlet?pageNum=" + (new_page_index+1));
    $("#stuForm").submit();
    return false;
}

$(function(){
	$("#News-Pagination").pagination(${result.totalRecord}, {
        items_per_page:${result.pageSize}, // 每页显示多少条记录
        current_page:${result.currentPage} - 1, // 当前显示第几页数据
        num_display_entries:8, // 分页显示的条目数
        next_text:"下一页",
        prev_text:"上一页",
        num_edge_entries:2, // 连接分页主体，显示的条目数
        callback:handlePaginationClick
        });
	});
	
	// 设置法院默认级别
	$("#court_level").val("${court_level}");
</script>
<body style="background-color: #f6f6f6;">
		
		<div>
		
			<form action="<%=context %>/jdbcSql/JdbcSqlServlet"  id="stuForm"  method="post" target="contents">
				<input name="court_level" id="court_level" value="<%=session.getAttribute("court_levelstr") %>" type="hidden">
				
			</form>
		</div>		
		
		<div id="s_r">
		
			<div class="s_r_title">
				<span class="t_font">查询结果</span>
			</div>
			
			<!-- 后台返回结果为空 -->
			<c:if test="${fn:length(result.dataList) eq 0 }">
				<span>查询的结果不存在</span>
			</c:if>
			
			<div id="content">
			<!--新闻条-->
			<c:if test="${fn:length(result.dataList) gt 0 }">
				<c:forEach items="${result.dataList }" var="books">
					<div class="news">
						<div class="news_pic">
							
							<!--新闻时间-->
							<div class="times">
								<div class="times_1"><c:out value="${books.time }"></c:out></div>
							</div>
						
							
						</div>
						
						<div class="n_title">
							<a href="../show_books.jsp?id=${books.id}">
								<c:out value="${books.title }"></c:out>
							</a>
						</div>
						
						<div class="cl">
							<c:if test="${ books.court_level eq 1}">${books.court}</c:if>
							<c:if test="${ books.court_level eq 2}">${books.court}</c:if>
							<c:if test="${ books.court_level eq 3}">${books.court}</c:if>
							<c:if test="${ books.court_level eq 4}">${books.court}</c:if>
						</div>
						
						<div class="news_con">
							<c:out value="${books.content }"></c:out>
						</div>
						
						<div class="collect">
							<img src="../img/premium.png"/>
							<div class="collect_font">收藏</div>
						</div>
					</div>
				</c:forEach>
			</c:if>
			<div id="News-Pagination"></div>
			</div>
			
		</div>
</body>
</html>