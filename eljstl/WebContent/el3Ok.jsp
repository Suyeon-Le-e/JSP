<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
ID : <%=id %>  / PW : <%=pw %>
<hr>
ID : ${param.id } / PW: ${param.pw }
<hr>
applicarionScope : ${applicationScope.application_name }<br>
sessionScope : ${sessionScope.session_name }<br>
pageScope : ${pageScope.page_name }<br>
requestScope : ${requestScope.request_name }<br>


</body>
</html>