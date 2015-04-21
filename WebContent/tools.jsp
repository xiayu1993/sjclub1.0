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
<jsp:include page="globalpart/header.jsp">
	<jsp:param name="pagename" value="sjclub_tools.jsp" />
</jsp:include>
<!-- ./页面头部 -->

<!-- 页面内容 -->
<div class="content">
	<h3 class="title_bg tools_h3">小工具解决大烦恼</h3>
	<div class="content_tools">
		<div class="angle tong">
			统
			<span class="angle-span span-left-top"></span>
			<span class="angle-span span-right-top"></span>
			<span class="angle-span span-left-bottom"></span>
			<span class="angle-span span-right-bottom"></span>
		</div>

		<div class="angle tou">
			投
			<span class="angle-span span-left-top"></span>
			<span class="angle-span span-right-top"></span>
			<span class="angle-span span-left-bottom"></span>
			<span class="angle-span span-right-bottom"></span>
		</div>

		<div class="angle wen">
			问
			<span class="angle-span span-left-top"></span>
			<span class="angle-span span-right-top"></span>
			<span class="angle-span span-left-bottom"></span>
			<span class="angle-span span-right-bottom"></span>
		</div>

		<div class="angle ping">
			评
			<span class="angle-span span-left-top"></span>
			<span class="angle-span span-right-top"></span>
			<span class="angle-span span-left-bottom"></span>
			<span class="angle-span span-right-bottom"></span>
		</div>
	</div>
</div>
<!-- ./页面内容 -->

<!-- 页面底部 -->
<%@include file="globalpart/footer.jsp" %>
<!-- ./页面底部 -->
</body>
</html>