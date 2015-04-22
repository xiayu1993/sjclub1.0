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
<title>江汉大学社团平台</title>
<link rel="shortcut icon" href="img/icon.ico">
<link rel="stylesheet" href="css/global.css">
</head>
<body>
<!-- 页面头部 -->
<%@include file="globalpart/header.jsp" %>
<!-- ./页面头部 -->

<!-- 页面内容 -->
<div class="content" id="sjclub_index">
	<!-- 热点图展示区 -->
	<div class="index_show  clearfix">
		<div class="index_show_img"></div>
		<div class="index_show_popularity">
			<h3 class="title_bg">校园人气榜<span>popularity</span></h3>
			<ol>
				<li>智能小车爱好者协会</li>
				<li>数学建模协会</li>
				<li>ERP沙盘协会</li>
				<li>单车俱乐部</li>
				<li>西部支教协会</li>
				<li>“源动力”科研创新社</li>
				<li>江汉大学广播台</li>
				<li>手工制作社</li>
				<li>琅韵志愿者服务团队</li>
				<li>NAME心理学社</li>
			</ol>
		</div>
	</div>
	<!-- ./热点图展示区 -->
	
	<!-- 社团活动 -->
	<div class="index_active">
		<h3 class="title_bg">社团活动<span>club activities</span><a href="#"><span>更多>></span></a></h3>
		<div class="index_active_list">
			<div>
				<a href="#"><img src="#"></a>
				<p>社团活动名称</p>
				<p>活动截止时间：xxxx年xx月xx日</p>
			</div>
			<div>
				<a href="#"><img src="#"></a>
				<p>社团活动名称</p>
				<p>活动截止时间：xxxx年xx月xx日</p>
			</div>
			<div>
				<a href="#"><img src="#"></a>
				<p>社团活动名称</p>
				<p>活动截止时间：xxxx年xx月xx日</p>
			</div>
			<div>
				<a href="#"><img src="#"></a>
				<p>社团活动名称</p>
				<p>活动截止时间：xxxx年xx月xx日</p>
			</div>
		</div>
		
		<div class="index_active_list">
			<div>
				<a href="#"><img src="#"></a>
				<p>社团活动名称</p>
				<p>活动截止时间：xxxx年xx月xx日</p>
			</div>
			<div>
				<a href="#"><img src="#"></a>
				<p>社团活动名称</p>
				<p>活动截止时间：xxxx年xx月xx日</p>
			</div>
			<div>
				<a href="#"><img src="#"></a>
				<p>社团活动名称</p>
				<p>活动截止时间：xxxx年xx月xx日</p>
			</div>
			<div>
				<a href="#"><img src="#"></a>
				<p>社团活动名称</p>
				<p>活动截止时间：xxxx年xx月xx日</p>
			</div>
		</div>
		
		<div class="index_active_list">
			<div>
				<a href="#"><img src="#"></a>
				<p>社团活动名称</p>
				<p>活动截止时间：xxxx年xx月xx日</p>
			</div>
			<div>
				<a href="#"><img src="#"></a>
				<p>社团活动名称</p>
				<p>活动截止时间：xxxx年xx月xx日</p>
			</div>
			<div>
				<a href="#"><img src="#"></a>
				<p>社团活动名称</p>
				<p>活动截止时间：xxxx年xx月xx日</p>
			</div>
			<div>
				<a href="#"><img src="#"></a>
				<p>社团活动名称</p>
				<p>活动截止时间：xxxx年xx月xx日</p>
			</div>
		</div>
		
	</div>
	<!-- ./社团活动 -->
	
	<!-- 特别推荐 -->
	<div class="index_special">
		<h3 class="title_bg">特别推荐<span>special activities recommendation</span></h3>
		<img src="#">
		<div>
			<h4>视界网络新媒体社团</h4>
			<p>社团年龄：1年</p>
			<p>社团类型：学术类</p>
			<p>社团特色：平面设计 网站建设 各类软件</p>
		</div>
	</div>
	<!-- ./特别推荐 -->
	
	<!-- 友情链接 -->
	<div class="index_links">
		<h3 class="title_bg">友情链接<span>links</span></h3>
		<div>
			<p><a href="http://210.42.72.73:888/jwweb/">江汉大学教务网络管理系统</a></p>
			<p><a href="http://210.42.72.169">江汉大学俱乐部管理系统</a></p>
			<p><a href="http://jhun.tsk.erya100.com/studentLogin">江汉大学尔雅通识课</a></p>
		</div>
	</div>
	<!-- ./友情链接 -->
</div>
<!-- ./页面内容 -->

<!-- 页面底部 -->
<%@include file="globalpart/footer.jsp" %>
<!-- ./页面底部 -->
<script src="js/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$(".header_nav_ul>li:eq(0)").addClass("header_active")
})
</script>
</body>
</html>