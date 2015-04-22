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
<title>关于我们</title>
<link rel="shortcut icon" href="img/icon.ico">
<link rel="stylesheet" href="css/global.css">
</head>
<body>
<!-- 页面头部 -->
<jsp:include page="globalpart/header.jsp">
	<jsp:param name="pagename" value="sjclub_about.jsp" />
</jsp:include>
<!-- ./页面头部 -->

<!-- 页面内容 -->
<div class="content">
	<!-- 页面左边内容 -->
	<div class="content_left about_left">
		<h3 class="title_bg">江汉大学社团平台</h3>
		<p>江汉大学<span class="span_2">社团平台</span>是</p>
		<p>由<span class="span_1">视界网络新媒体社团</span>设计并推出的</p>
		<p>旨在汇集江大各社团的<span class="span_2">最新资讯</span></p>
		<p>让广大师生能够<span class="span_2">第一时间</span>了解社团最新动态</p>
		<p>选择自己的喜欢的社团活动</p>
		<p><span class="span_2">提高</span>大家活动参与积极度</p>
		<p>最终做到<span class="span_2">推动</span>江大社团积极健康发展的目的</p>
		<p>我们由衷欢迎广大师生给我们留言提出<span class="span_3">宝贵意见</span></p>
		<p>让我们能够<span class="span_3">进步</span></p>
		<p>也希望有更多江大学子能够参与到<span class="span_3">社团活动</span>中来</p>
	</div>
	<!-- ./页面左边内容 -->
	
	<!-- 页面右边内容 -->
	<div class="content_right about_right">
		<div class="page_right_content about_thanks">
			<h3>特别鸣谢<span>thanks</span></h3>
			<p>XXXXXXXXXXXXXXXXXXX</p>
			<p>XXXXXXXXXXXXXXXXXXX</p>
			<p>XXXXXXXXXXXXXXXXXXX</p>
			<p>XXXXXXXXXXXXXXXXXXX</p>
			<p>XXXXXXXXXXXXXXXXXXX</p>
			<p>XXXXXXXXXXXXXXXXXXX</p>
		</div>
	</div>
	<!-- ./页面右边内容 -->
</div>
<!-- ./页面内容 -->

<!-- 页面底部 -->
<%@include file="globalpart/footer.jsp" %>
<!-- ./页面底部 -->
</body>
</html>