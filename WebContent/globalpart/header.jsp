<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.header_nav{
	width:1000px;
	margin:20px auto;
	text-align:center;
	
	/* 作为父层基准，为子层调整位置做参考 */
	position:relative;
	top:0;
	left:0;
}
.header_nav>img{
	width:400px;
	heigth:60px;
	float:left;
	
	/* 图片文字周围有透明背景，所以需要调整位置 */
	position:relative;
	top:0;
	left:-8px;
}
.header_nav_ul{
	margin-left:464px;
	padding:15px 0;
}
.header_nav_ul>li{
	display:inline-block;
}
.header_nav_ul>li>a{
	padding:15px;
	color:#aaa;
}
.header_nav_ul>li>a:hover{
	background-color:#ff4800;
	text-decoration:none;
	color:#fff;
}
/* 当前页面时使导航栏相应模块背景变色 */
.header_active>a{
	background-color:#ff4800;
	color:#fff !important;
}
#header_nav_login{
	display:inline-block;
	width:40px;
	height:40px;
	font-size:80%;
	line-height:1.6;
	
	/* 调整登录、注册的位置，使其放进导航条中 */
	position:absolute;
	top:6px;
	left:957px;
	z-index:2;
}
#header_nav_login>li>a{
	color:#ff4800;
}
</style>
<!-- 顶部两条装饰线 -->
<div style="background-color:#414141;height:3px;"></div>
<div style="background-color:#d8450b;height:3px;"></div>
<!-- 导航条 -->
<div class="header_nav">
	<img src="img/jhdx.png">
	<ul class="header_nav_ul title_bg">
		<%--获取相应的页面后使其变黑 --%>
        <li><a href="index.jsp">网站首页</a></li>
        <li><a href="active.jsp">社团活动</a></li>
        <li><a href="list.jsp">社团列表</a></li>
        <li><a href="tools.jsp">实用工具</a></li>
        <li><a href="about.jsp">关于我们</a></li>
		<li style="width:40px;"></li>
	</ul>
	<ul id="header_nav_login">
		<li><a href="login.jsp">登录</a></li>
		<li><a href="register.jsp">注册</a></li>
	</ul>
</div>
<!-- ./导航条 -->