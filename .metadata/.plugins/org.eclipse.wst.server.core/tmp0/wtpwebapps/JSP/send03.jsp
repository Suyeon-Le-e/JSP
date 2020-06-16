<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>send03.jsp</title>
</head>
<body>
<%
	String data = request.getParameter("data");
	int iData = Integer.parseInt(data)*100;
%>
Post값 계속 전달하기 : 전달된 값 <%=data %>
send01에서 전달된 값 100배  :<%=iData %>
<form action="send04.jsp"method="post">
	<input type="hidden" name="data"value="<%=data%>">
	<input type="submit" value="전송">
</form>

</body>
</html>