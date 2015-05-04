<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.ResultSet" %>
    <jsp:useBean id="listPage" scope="page" class="org.sjclub.util.Page" />
    <%! 
    	//数据分页
    	int CountPage = 0;
    	int CurrPage = 1;
    	int PageSize = 20;
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
<title>社团列表</title>
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
		<h3>社团列表<span>club lists</span></h3>
	</div>
	
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
	String sql = "select * from dbo.T_Club";
	//执行查询结果
	ResultSet rs = listPage.selectSql(sql);
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
		for(int j=0; j<4; j++){
			%>
				<div class="club_list">
			<%
			for(int k=0; k<5; k++){
				if(i < PageSize && !rs.isAfterLast()){
				%>
					<div>
						<a href=listDetail.jsp?clubId=<%=rs.getString("Id") %>>
							<img src=http://sjclub.org/<%=rs.getString("ClubRoute") %>/ClubLogo/<%=rs.getString("ClubLogo") %>>
						</a>
						<p><%=rs.getString("ClubName") %></p>
					</div>
				<%
					rs.next();
					i++;
				}
			}
			listPage.closeAll();
			%>
				</div>
			<%
		}
	}
%>
	
	<!-- 分页标签 -->
	<ul class="page">
	<%
		//上一页
		if(CurrPage > 1){
%>
			<li><a href="list.jsp?page=<%=CurrPage-1 %>">&laquo;</a></li>
<%
		}
%><%
		//页码
		for(int n=1; n<=CountPage; n++ ){
%>
			<li><a href="list.jsp?page=<%=n %>" <%if(n==CurrPage){ %> style="color:#ccc"<%} %>><%=n %></a></li>
			
<%
		}
%><%
		//下一页
		if(CurrPage < CountPage){
%>
			<li><a href="list.jsp?page=<%=CurrPage+1 %>">&raquo;</a></li>
<%
		}
%>
	</ul>
	<!-- ./分页标签 -->
</div>
<!-- ./页面内容 -->

<!-- 页面底部 -->
<%@include file="globalpart/footer.jsp" %>
<!-- ./页面底部 -->
<script src="js/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$(".header_nav_ul>li:eq(2)").addClass("header_active")
})
</script>
</body>
</html>