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
<title>实用工具</title>
<link rel="shortcut icon" href="img/icon.ico">
<link rel="stylesheet" href="css/global.css">
</head>
<body>
<!-- 页面头部 -->
<%@include file="globalpart/header.jsp" %>
<!-- ./页面头部 -->

<!-- 页面内容 -->
<div class="content">
	<h3 class="title_bg title_center">小工具解决大烦恼</h3>
	<div class="tools_content">
		<img src="img/tools1.png" id="tools1_png">
		<img src="img/tools2.png" id="tools2_png">
		<div id="tools_content_1">
			<h2>统计工具</h2>
			<p>使用在线统计的方式，它自动帮您汇总数据</p>
		</div>
		
		<div id="tools_content_2">
			<h2>问卷工具</h2>
			<p>不用再派发纸质问卷啦！您只用发布URL地址即可</p>
		</div>
		
		<div id="tools_content_3">
			<h2>投票工具</h2>
			<p>想要创建投票活动？相信它能助您一臂之力</p>
		</div>
		
		<div id="tools_content_4">
			<h2>评分工具</h2>
			<p>评分还要用笔来算？让它来给您计算吧</p>
		</div>
		
		<div id="tools_content_5">
			<p><a href="#">快来试一试吧</a></p>
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
	$(".header_nav_ul>li:eq(3)").addClass("header_active")
})
</script>
</body>
</html>