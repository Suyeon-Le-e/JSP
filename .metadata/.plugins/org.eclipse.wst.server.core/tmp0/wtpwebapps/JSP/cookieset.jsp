<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookieset.jsp</title>
</head>
<body>
<%
Cookie cookie = new Cookie("id","abcd");
cookie.setMaxAge(60*60);//살아있는시간설정/ 안하면 서버끄면죽음 (1시간)
response.addCookie(cookie);
%>
<a href="cookieget.jsp">Get Cookie</a>

</body>
</html>