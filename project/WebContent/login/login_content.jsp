<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<form name="loginForm" action="loginOk.jsp"method="post">
	<fieldset>
		<legend>로그인</legend>
		<br> <span>ID: </span><input type="text" id="id" name="id">
		<br> <span>PWD: </span><input type="password" id="pw" name="pw">
		<br>
		<br> <input type="submit" id="loginBtn" value="로그인">&nbsp;&nbsp; <br>

		<a href="/project/join/join.jsp">회원가입</a>

	</fieldset>
</form>