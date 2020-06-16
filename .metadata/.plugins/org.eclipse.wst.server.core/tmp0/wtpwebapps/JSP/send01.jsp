<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>send01.jsp</title>
</head>
<body>
Post값 계속 전달하기
<form action="redirect.jsp"method="post">
	<input type="text" name="data">
	<input type="radio" name="times" value="02" checked="checked">10배 (send02)
	<input type="radio" name="times" value="03">100배 (send03)
	<input type="submit" value="전송">
</form>
<hr>
<a href="send02.jsp?data=5">전송</a>



</body>
</html>