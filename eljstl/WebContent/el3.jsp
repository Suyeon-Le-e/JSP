<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="el3Ok.jsp" method="post">
	ID : <input type="text" name="id"><br>
	PW : <input type="text" name="pw"><br>
	<input type="submit" value="LOGIN"><br>
</form>
<hr>

<%
	application.setAttribute("application_name", "application_value"); //전역변수 / 부르면 누구나 같은값
	session.setAttribute("session_name", "session_value"); //나와 관련된것 /담기만 하면 어디서든 쓸수있음
	pageContext.setAttribute("page_name", "page_value");
	request.setAttribute("request_name", "request_value");
%>
<jsp:forward page="requestScope.jsp"/>
<hr>
pageScope : ${pageScope.page_name }<br>
requestScope : ${requestScope.request_name }<br>

</body>
</html>