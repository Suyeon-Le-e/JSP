<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>send05.jsp</title>
</head>
<body>
<%
	String data = request.getParameter("data");
	int iData = Integer.parseInt(data)*10000;
%>
Post값 계속 전달하기 : 전달된 값 <%=data %>
send01에서 전달된 값 10000배  :<%=iData %>

</body>
</html>