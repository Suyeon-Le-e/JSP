<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>send02.jsp</title>
</head>
<body>
<%
	String data = request.getParameter("data");
	int iData = Integer.parseInt(data)*10;
%>
Post값 계속 전달하기 : 전달된 값 <%=data %>
send01에서 전달된 값 10배  :<%=iData %>
<form action="send03.jsp"method="post">
	<input type="hidden" name="data"value="<%=data%>">
	<input type="submit" value="전송">
</form>
<a href="send03.jsp?data=<%=data%>">전송</a>

</body>
</html>