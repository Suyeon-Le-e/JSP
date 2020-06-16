<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<a href="/project/index.jsp"> <img src="/project/img/logo.png"
	class="logo" alt="">
</a>
<% 
String name = (String)session.getAttribute("userName");
%>
<%if(name == null){%>
<nav>
	<ul class="nav-items">
		<li><a href="/project/login/login.jsp">Login</a></li>
		<li>|</li>
		<li><a href="/project/join/join.jsp">Join</a></li>
		<li>|</li>
		<li><a href="/project/index.jsp">게시판</a></li>
	</ul>
</nav>
<%}else{ %>
<nav>
	<ul class="nav-items">
		<li><a href="#"><%=name %>님 환영합니다</a></li>
		<li>|</li>
		<li><a href="/project/login/logout.jsp">로그아웃</a></li>
		<li>|</li>
		<li><a href="/project/join/update.jsp">회원정보수정</a></li>
	</ul>
</nav>
<%} %>
