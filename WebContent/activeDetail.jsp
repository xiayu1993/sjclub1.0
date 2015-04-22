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
<title>社团活动详情</title>
<link rel="shortcut icon" href="img/icon.ico">
<link rel="stylesheet" href="css/global.css">
</head>
<body>
<!-- 页面头部 -->
<%@include file="globalpart/header.jsp" %>
<!-- ./页面头部 -->

<!-- 页面内容 -->
<div class="content" id="sjclub_active">
	<div class="page_nav">
		<h3>社团活动列表<span>club actives lists</span><span>&gt;&gt;活动详情</span></h3>
	</div>
	<div>
		<div class="activeDetail_img"><img src="#"></div>
		<div class="activeDetail_content">
			<h2>标题标题标题标题标题</h2>
			<p>正文正文正文正文正文正文正文正文正文正文正文正文正文正文正文正文正文正文
			正文正文正文正文正文正文正文正文正文正文正文正文正文正文正文正文正文正文正文
			作文作文作文作文作文作文作文正文正文正文正文正文正文正文正文正文正文正文正文
			</p>
		</div>
		<div class="activeDetail_info">
			<p>活动时间：<span>xxxx年xx月xx日</span></p>
			<p>活动地点：<span>xxxxx</span></p>
			<p>举办单位：<span>xxxxxxxxxxx</span><a href="#" class="button">我要参加</a></p>
		</div>
	</div>
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