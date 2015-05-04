<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.Connection" %>
    <%@ page import="java.sql.PreparedStatement" %>
    <%@ page import="java.sql.ResultSet" %>
    <%@ page import="org.sjclub.util.DBUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 使浏览器默认启用极速模式，但并不是所有浏览器都能正确执行 -->
<meta name="renderer" content="webkit">
<!-- 使IE浏览器启用最新的版本 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>社团详情</title>
<link rel="shortcut icon" href="img/icon.ico">
<link rel="stylesheet" href="css/global.css">
</head>
<body>
<!-- 页面头部 -->
<%@include file="globalpart/header.jsp" %>
<!-- ./页面头部 -->

<!-- 页面内容 -->
<div class="content">
	<!-- listDetail-left -->
	<div class="content_left listDetail_left">
		<div class="page_nav">
			<h3>社团列表<span><a href="list.jsp">club lists</a></span><span>&gt;&gt;&nbsp;xxxxx社团</span></h3>
		</div>
		<%
	    	//获取list.jsp页面传递的社团id
	    	String clubId = request.getParameter("clubId");
	    	Connection conn = DBUtil.getConnection();
	    	String sql = "select * from dbo.T_Club where Id = ?";
	    	try{
	    		PreparedStatement ps = conn.prepareStatement(sql);
	    		ps.setString(1,clubId);
	    		ResultSet rs = ps.executeQuery();
	    		if(rs.next()){
		    	%>
				<div class="listDetail_content">
					<h2><%=rs.getString("ClubName") %></h2>
					<div><%=rs.getString("ClubIntroduction") %></div>
				</div>
				<!-- <div class="listDetail_info">
					<a href="#" class="button">+加入社团</a>
					<p class="title_bg">tips:加入社团，参加此社团的活动，了解此社团的更多详情。最多能同时加入三个社团哦。</p>
				</div> -->
				<%
		//查询结束
    	}
    	rs.close();
    	ps.close();
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		DBUtil.closeConnection(conn);
    	}
    %>
	</div>
	<!-- ./listDetail-left -->
	
	<!-- listDetail-right -->
	<div class="content_right listDetail_right">
		<div class="search">
			<input type="text" value="搜索你感兴趣的活动">
			<a href="#"><img src="img/search.png"></a>
		</div>
		<div class="page_right_content">
			<h3>其他社团<span>others</span></h3>
			<p>社团社团社团社团社团</p>
			<p>社团社团社团社团社团</p>
			<p>社团社团社团社团社团</p>
			<p>社团社团社团社团社团</p>
			<p>社团社团社团社团社团</p>
		</div>
	</div>
	<!-- ./listDetail-right -->
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