<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<jsp:include page="globalpart/header.jsp">
	<jsp:param name="pagename" value="sjclub_index.jsp" />
</jsp:include>
<!-- ./页面头部 -->

<!-- 页面内容 -->
<div class="content">
	<!-- listDetail-left -->
	<div class="content_left listDetail_left">
		<div class="page_nav">
			<h3>社团列表<span>club lists</span><span>>>&nbsp;xxxxx社团</span></h3>
		</div>
		<div class="listDetail_content">
			<h2>xxxxxxx社团</h2>
			<p>正文正文正文正文正文正文正文正文正文正文正文正文正文正文正文正文正文正文
			正文正文正文正文正文正文正文正文正文正文正文正文正文正文正文正文正文正文正文
			作文作文作文作文作文作文作文正文正文正文正文正文正文正文正文正文正文正文正文
			</p>
		</div>
		<div class="listDetail_info">
			<button type="button">+加入社团</button>
			<p class="title_bg">tips:加入社团，参加此社团的活动，了解此社团的更多详情。最多能同时加入三个社团哦。</p>
		</div>
	</div>
	<!-- ./listDetail-left -->
	
	<!-- listDetail-right -->
	<div class="content_right listDetail_right">
		<div class="search">
			<input type="text" value="搜索你感兴趣的活动">
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
</body>
</html>