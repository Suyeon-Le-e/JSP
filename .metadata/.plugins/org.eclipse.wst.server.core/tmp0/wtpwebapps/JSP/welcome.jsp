<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome.jsp</title>
</head>
<body>
<%  //세션은 object! 형변환 해주기
String id = (String)session.getAttribute("userID"); //심었던 이름넣기
%>
<a href="update.jsp"><%=id %></a> 님환영합니다.

</body>
</html>