<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="org.sjclub.model.User" %>
    <%
    	User user = (User)session.getAttribute("user");
    	if(user != null){
    %>
    		<ul id="header_nav_login">
    			<li><a href=http://sjclub.org/Frame.aspx?uid=<%=user.getId() %>>个人中心</a>
    		</ul>
    
    <%
    	}else{
    %>
    		<ul id="header_nav_login">
				<li><a href="login.jsp">登录</a></li>
				<li><a href="register.jsp">注册</a></li>
			</ul>
    <%
    	}
    %>