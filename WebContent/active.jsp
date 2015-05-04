<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.ResultSet" %>
    <jsp:useBean id="activePage" scope="page" class="org.sjclub.util.Page" />
    <%! 
    	//数据分页
    	int CountPage = 0;
    	int CurrPage = 1;
    	int PageSize = 4;
    	int CountRow = 0;
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 使浏览器默认启用极速模式，但并不是所有浏览器都能正确执行 -->
<meta name="renderer" content="webkit">
<!-- 使IE浏览器启用最新的版本 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>社团活动</title>
<link rel="shortcut icon" href="img/icon.ico">
<link rel="stylesheet" href="css/global.css">
</head>
<body>
<!-- 页面头部 -->
<%@include file="globalpart/header.jsp" %>
<!-- ./页面头部 -->

<!-- 页面内容 -->
<div class="content">
	<div class="page_nav">
		<h3>社团活动列表<span>club actives lists</span></h3>
	</div>
	<!-- 页面左边社团活动 -->
	<div class="content_left active_left">
	
	
		<%-- 数据分页 --%>
<%
	//获取当前页面值
	String strPage = request.getParameter("page");
	//如果当前页面为空着赋值为1，不为空则获取改值
	if(strPage == null){
		CurrPage = 1;
	}else{
		CurrPage = Integer.parseInt(strPage);
	}
	//定义查询语句
	String sql = "select * from dbo.T_ClubActive";
	//执行查询结果
	ResultSet rs = activePage.selectSql(sql);
	//获取查询结果集中的记录数
	rs.last();
	CountRow = rs.getRow();
	//计算总的页数
	CountPage = (CountRow-1)/PageSize+1;
	//获取第一条记录
	rs.first();
	int i = 0;
	if(CountRow > 0){
		//指定跳转的页码
		rs.absolute(CurrPage * PageSize - PageSize + 1);
		while(i < PageSize && !rs.isAfterLast()){
		%>
			<div class="active_active">
				<img src=http://sjclub.org/<%=rs.getString("ActivePosterRoute") %>/<%=rs.getString("ActivePosterName") %>>
				<div>
					<h3 class="title_bg"><%=rs.getString("ActiveHead") %></h3>
					<div class="active_active_content"><%=rs.getString("ActiveContent") %></div>
					<p>
						<a href=activeDetail.jsp?activeId=<%=rs.getString("Id")%>&clubId=<%=rs.getString("ClubId") %> class="button">查看详情</a>
						<%-- <a href=activeDetail.jsp?activeId=<%=rs.getString("Id")%>&userId=${user.Id } class="button">参加活动</a> --%>
					</p>
					<p>
						<img src="img/active1.png"><span><%=rs.getString("ActiveEndTime") %></span>
						<!-- <img src="img/active2.png"><span>地点地点地点</span>
						<img src="img/active3.png"><span>社团名称社团名称</span> -->
					</p>
				</div>
			</div>
		<%
				rs.next();
				i++;
			}
			activePage.closeAll();
		}
		%>
		
		<!-- 分页标签 -->
	<ul class="page">
	<%
		//上一页
		if(CurrPage > 1){
%>
			<li><a href="active.jsp?page=<%=CurrPage-1 %>">&laquo;</a></li>
<%
		}
%><%
		//页码
		for(int n=1; n<=CountPage; n++ ){
%>
			<li><a href="active.jsp?page=<%=n %>" <%if(n==CurrPage){ %> style="color:#ccc"<%} %>><%=n %></a></li>
			
<%
		}
%><%
		//下一页
		if(CurrPage < CountPage){
%>
			<li><a href="active.jsp?page=<%=CurrPage+1 %>">&raquo;</a></li>
<%
		}
%>
	</ul>
	<!-- ./分页标签 -->
	</div>
	<!-- ./页面左边社团活动 -->
	
	<!-- 页面右边社团活动 -->
	<div class="content_right active_right">
		<div class="search">
			<input type="text" value="搜索你感兴趣的活动">
			<a href="#"><img src="img/search.png"></a>
		</div>
		<div class="page_right_content">
			<h3>新闻资讯<span>news</span></h3>
			<p>新闻新闻新闻新闻新闻</p>
			<p>新闻新闻新闻新闻新闻</p>
			<p>新闻新闻新闻新闻新闻</p>
			<p>新闻新闻新闻新闻新闻</p>
			<p>新闻新闻新闻新闻新闻</p>
			<p>新闻新闻新闻新闻新闻</p>
			<p>新闻新闻新闻新闻新闻</p>
			<p>新闻新闻新闻新闻新闻</p>
		</div>
	</div>
	<!-- ./页面右边社团活动 -->
</div>
<!-- ./页面内容 -->

<!-- 页面底部 -->
<%@include file="globalpart/footer.jsp" %>
<!-- ./页面底部 -->
<script src="js/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$(".header_nav_ul>li:eq(1)").addClass("header_active")
})
</script>
</body>
</html>