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
<jsp:include page="globalpart/header.jsp">
	<jsp:param name="pagename" value="sjclub_active.jsp" />
</jsp:include>
<!-- ./页面头部 -->

<!-- 页面内容 -->
<div class="content">
	<!-- 页面左边社团活动 -->
	<div class="active_left">
		<div class="active_active">
			<img src="#">
			<h3 class="title_bg">社团活动名称</h3>
			<pre>
				aaa
				bbb
				ccc
				ddd
				eee
			</pre>
			<button type="button">查看详情</button>
			<button type="button">参加活动</button>
			<p>
				<span>xxxx年xx月xx日</span>
				<span>地点地点地点</span>
				<span>社团名称社团名称</span>
			</p>
		</div>
		
		<div class="active_active">
			<img src="#">
			<h3 class="title_bg">社团活动名称</h3>
			<pre>
				aaa
				bbb
				ccc
				ddd
				eee
			</pre>
			<button type="button">查看详情</button>
			<button type="button">参加活动</button>
			<p>
				<span>xxxx年xx月xx日</span>
				<span>地点地点地点</span>
				<span>社团名称社团名称</span>
			</p>
		</div>
		
		<div class="active_active">
			<img src="#">
			<h3 class="title_bg">社团活动名称</h3>
			<pre>
				aaa
				bbb
				ccc
				ddd
				eee
			</pre>
			<button type="button">查看详情</button>
			<button type="button">参加活动</button>
			<p>
				<span>xxxx年xx月xx日</span>
				<span>地点地点地点</span>
				<span>社团名称社团名称</span>
			</p>
		</div>
		
		<div class="active_active">
			<img src="#">
			<h3 class="title_bg">社团活动名称</h3>
			<pre>
				aaa
				bbb
				ccc
				ddd
				eee
			</pre>
			<button type="button">查看详情</button>
			<button type="button">参加活动</button>
			<p>
				<span>xxxx年xx月xx日</span>
				<span>地点地点地点</span>
				<span>社团名称社团名称</span>
			</p>
		</div>
		
		<!-- 分页标签 -->
		<ul class="page">
			<li>首页</li>
			<li>1</li>
			<li>2</li>
			<li>末页</li>
		</ul>
		<!-- ./分页标签 -->
	</div>
	<!-- ./页面左边社团活动 -->
	
	<!-- 页面右边社团活动 -->
	<div class="active_right">
		<div class="active_search">
			<input type="text" value="搜索你感兴趣的活动">
		</div>
		<div class="active_news">
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
<script src="js/global.js"></script>
</body>
</html>