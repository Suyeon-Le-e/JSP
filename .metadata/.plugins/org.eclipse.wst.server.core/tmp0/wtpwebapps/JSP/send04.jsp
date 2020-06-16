<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>send04.jsp</title>
</head>
<body>
<%
	String data = request.getParameter("data");
	int iData = Integer.parseInt(data)*1000;
%>
Post값 계속 전달하기 : 전달된 값 <%=data %>
send01에서 전달된 값 1000배  :<%=iData %>
<form action="send05.jsp"method="post">
	<input type="text" name="data"value="<%=data%>"readonly="readonly">
	<input type="submit" value="전송">
</form>


</body>
</html>