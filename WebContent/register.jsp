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
<title>注册 | 社团平台</title>
<link rel="shortcut icon" href="img/icon.ico">
<link rel="stylesheet" href="css/global.css">
</head>
<body>
<!-- 页面头部 -->
<%@include file="globalpart/header.jsp" %>
<!-- ./页面头部 -->

<!-- 页面内容 -->
<div class="content">
	<div class="content_left">
		<h3 class="title_bg title_center">欢迎加入我们</h3>
		<form class="form-horizontal">
			<div class="form-group">
				<label for="account">邮箱：</label>
				<div>
					<input type="text" name="account" id="account" placeholder="Email">
				</div>
			</div>
			<div class="form-group">
				<label for="name">昵称：</label>
				<div>
					<input type="text" name="name" id="name" placeholder="Name">
				</div>
			</div>
			<div class="form-group">
				<label for="password">密码：</label>
				<div>
					<input type="password" name="password" id="password" placeholder="password">
				</div>
			</div>
			<div class="form-group">
				<label for="repassword">确认密码：</label>
				<div>
					<input type="password" name="repassword" id="repassword" placeholder="Confirm password">
				</div>
			</div>
			<div class="form-group">
				<input type="reset" value="重置">
				<input type="submit" value="注册">
			</div>
		</form>
	</div>
	
	<div class="content_right">
		<div class="page_right_content lr_explain">
			<h3>特别说明</h3>
			<p>主页君很开心看到大家来注册哟</p><br>
			<p>大家可以起个萌萌哒的名字</p><br>
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
	$(".footer").addClass("footer_fixed")
})
</script>
</body>
</html>