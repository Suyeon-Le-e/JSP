<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post.jsp</title>
</head>
<body>
<h1>form data submit</h1>
<hr>
<form action="formex.jsp"method="post">
Name : <input type="text" name="name" size="10"><br>
ID : <input type="text" name="id" size="10"><br>
PassWord : <input type="password" name="pw" size="10"><br>
hobby : <input type="checkbox" name="hobby" value="cook">요리
<input type="checkbox" name="hobby" value="read">독서
<input type="checkbox" name="hobby" value="run">조깅
<input type="checkbox" name="hobby" value="swim">수영
<input type="checkbox" name="hobby" value="sleep">취침<br>
<input type="radio" name="major" value="kor">국어<br>
<input type="radio" name="major" value="eng">영어<br>
<input type="radio" name="major" value="mat">수학<br>
<input type="radio" name="major" value="des">디자인<br>
Protocol:
<select name="protocol">
	<option value="http">HTTP</option>
	<option value="ftp">FTP</option>
	<option value="smtp">SMTP</option>
	<option value="pop">POP</option>
</select> <br>
하고싶은말
<textarea rows="" cols="" name="speak"></textarea>

<input type="submit" value="전송">
<input type="reset" value="초기화">

</form>

</body>
</html>