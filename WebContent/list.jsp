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
<title>社团列表</title>
<link rel="shortcut icon" href="img/icon.ico">
<link rel="stylesheet" href="css/global.css">
</head>
<body>
<!-- 页面头部 -->
<%@include file="globalpart/header.jsp" %>
<!-- ./页面头部 -->

<!-- 页面内容 -->
<div class="content" id="sjclub_list">
	<div class="page_nav">
		<h3>社团列表<span>club lists</span></h3>
	</div>
	<div class="club_list">
		<div>
			<a href="#"><img src="#"></a>
			<p>社团社团社团社团社团社团</p>
		</div>
		<div>
			<a href="#"><img src="#"></a>
			<p>社团社团社团社团社团社团</p>
		</div>
		<div>
			<a href="#"><img src="#"></a>
			<p>社团社团社团社团社团社团</p>
		</div>
		<div>
			<a href="#"><img src="#"></a>
			<p>社团社团社团社团社团社团</p>
		</div>
		<div>
			<a href="#"><img src="#"></a>
			<p>社团社团社团社团社团社团</p>
		</div>
	</div>
	
	<div class="club_list">
		<div>
			<a href="#"><img src="#"></a>
			<p>社团社团社团社团社团社团</p>
		</div>
		<div>
			<a href="#"><img src="#"></a>
			<p>社团社团社团社团社团社团</p>
		</div>
		<div>
			<a href="#"><img src="#"></a>
			<p>社团社团社团社团社团社团</p>
		</div>
		<div>
			<a href="#"><img src="#"></a>
			<p>社团社团社团社团社团社团</p>
		</div>
		<div>
			<a href="#"><img src="#"></a>
			<p>社团社团社团社团社团社团</p>
		</div>
	</div>
	
	<div class="club_list">
		<div>
			<a href="#"><img src="#"></a>
			<p>社团社团社团社团社团社团</p>
		</div>
		<div>
			<a href="#"><img src="#"></a>
			<p>社团社团社团社团社团社团</p>
		</div>
		<div>
			<a href="#"><img src="#"></a>
			<p>社团社团社团社团社团社团</p>
		</div>
		<div>
			<a href="#"><img src="#"></a>
			<p>社团社团社团社团社团社团</p>
		</div>
		<div>
			<a href="#"><img src="#"></a>
			<p>社团社团社团社团社团社团</p>
		</div>
	</div>
	
	<div class="club_list">
		<div>
			<a href="#"><img src="#"></a>
			<p>社团社团社团社团社团社团</p>
		</div>
		<div>
			<a href="#"><img src="#"></a>
			<p>社团社团社团社团社团社团</p>
		</div>
		<div>
			<a href="#"><img src="#"></a>
			<p>社团社团社团社团社团社团</p>
		</div>
		<div>
			<a href="#"><img src="#"></a>
			<p>社团社团社团社团社团社团</p>
		</div>
		<div>
			<a href="#"><img src="#"></a>
			<p>社团社团社团社团社团社团</p>
		</div>
	</div>
	
	<!-- 分页标签 -->
	<ul class="page">
		<li><a href="#">&lt;&lt;</a></li>
		<li><a href="#">1</a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">4</a></li>
		<li><a href="#">5</a></li>
		<li><a href="#">&gt;&gt;</a></li>
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