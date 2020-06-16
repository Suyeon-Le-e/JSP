<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%if(session.getAttribute("id") == null){//비로그인%>
<jsp:forward page="login.jsp"/>
<%} %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main.jsp</title>
</head>
<body>
<%
	String id = (String)session.getAttribute("id");
%>
<h1><%=id %> 님 환영합니다~~~~!!<a href="memberInfoSelect.jsp">[List]</a> </h1>
<hr>
<h2>
<a href="logout.jsp">로그아웃</a> / <a href="modify.jsp">회원정보수정</a>
/ <a href="delete.jsp">회원탈퇴</a>
</h2>
<hr>
</body>
</html>