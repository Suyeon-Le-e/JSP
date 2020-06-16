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
	Cookie[] cookies = request.getCookies();
	for(int i=0; i<cookies.length; i++){
		String str = cookies[i].getName();
		if(str.equals("id")){ //요놈을 잡아서
			cookies[i].setMaxAge(0); //쿠키 수명 0으로
			response.addCookie(cookies[i]); //수명이 0인애로 다시심기(지우기)
		}
	}
%>

</body>
</html>