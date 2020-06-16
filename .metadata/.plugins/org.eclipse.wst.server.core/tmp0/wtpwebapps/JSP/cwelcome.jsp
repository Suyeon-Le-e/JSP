<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cwelcome.jsp</title>
</head>
<body>
<% 
Cookie[] cookies = request.getCookies();
for(Cookie cookie : cookies){
	String id = cookie.getName();
	if(id.equals("id")){
%>
<a href="update.jsp"><%=cookie.getValue() %></a> 님환영합니다.
<%} } %>
<hr>
메인페이지 입니다.
</body>
</html>