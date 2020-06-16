<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%if(session.getAttribute("id") == null){//로그인체크
	response.sendRedirect("login.jsp");
} %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete.jsp</title>
</head>
<body>
<h2>회원탈퇴 : 비밀번호를 넣으세요 <br>
<form action="deleteOk.jsp"method="post">
	PW : <input type="password" name="pw">
	<input type="submit" value="전송">
</form>

</h2>
</body>
</html>