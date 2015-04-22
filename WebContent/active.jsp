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
		<div class="active_active">
			<img src="#">
			<div>
				<h3 class="title_bg">社团活动名称</h3>
				<p class="active_active_content">
					aaa
					bbb
					ccc
					ddd
					eee
				</p>
				<p>
					<a href="activeDetail.jsp" class="button">查看详情</a>
					<a href="activeDetail.jsp" class="button">参加活动</a>
				</p>
				<p>
					<img src="img/active1.png"><span>xxxx年xx月xx日</span>
					<img src="img/active2.png"><span>地点地点地点</span>
					<img src="img/active3.png"><span>社团名称社团名称</span>
				</p>
			</div>
		</div>
		
		<div class="active_active">
			<img src="#">
			<div>
				<h3 class="title_bg">社团活动名称</h3>
				<p class="active_active_content">
					aaa
					bbb
					ccc
					ddd
					eee
				</p>
				<p>
					<a href="activeDetail.jsp" class="button">查看详情</a>
					<a href="activeDetail.jsp" class="button">参加活动</a>
				</p>
				<p>
					<img src="img/active1.png"><span>xxxx年xx月xx日</span>
					<img src="img/active2.png"><span>地点地点地点</span>
					<img src="img/active3.png"><span>社团名称社团名称</span>
				</p>
			</div>
		</div>
		
		<div class="active_active">
			<img src="#">
			<div>
				<h3 class="title_bg">社团活动名称</h3>
				<p class="active_active_content">
					aaa
					bbb
					ccc
					ddd
					eee
				</p>
				<p>
					<a href="activeDetail.jsp" class="button">查看详情</a>
					<a href="activeDetail.jsp" class="button">参加活动</a>
				</p>
				<p>
					<img src="img/active1.png"><span>xxxx年xx月xx日</span>
					<img src="img/active2.png"><span>地点地点地点</span>
					<img src="img/active3.png"><span>社团名称社团名称</span>
				</p>
			</div>
		</div>
		
		<div class="active_active">
			<img src="#">
			<div>
				<h3 class="title_bg">社团活动名称</h3>
				<p class="active_active_content">
					aaa
					bbb
					ccc
					ddd
					eee
				</p>
				<p>
					<a href="activeDetail.jsp" class="button">查看详情</a>
					<a href="activeDetail.jsp" class="button">参加活动</a>
				</p>
				<p>
					<img src="img/active1.png"><span>xxxx年xx月xx日</span>
					<img src="img/active2.png"><span>地点地点地点</span>
					<img src="img/active3.png"><span>社团名称社团名称</span>
				</p>
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