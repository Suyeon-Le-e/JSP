<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<form name="joinForm" action="/project/index.jsp"
	method="post">
	<h3 class="header">회원가입</h3>
	<br>
	<div class="form">
		<h3>사이트 이름정보 입력</h3>
		<input type="text" id="inid" value="아이디"> <br>
		<h6 class="ex">영문자, 숫자, _만 입력가능. 최소 3자이상 입력하세요.</h6>
		<input type="text" id="inpw" value="비밀번호"> <br> <input
			type="text" id="checkpw" value="비밀번호확인"> <br>
		<br>

		<h3>개인정보 입력</h3>
		<input type="text" id="name" value="이름"> <br>
		<h6 class="ex">
			공백없이 한글, 영문, 숫자만 입력 가능 (한글2자, 영문4자 이상) <br> 닉네임을 바꾸시면 앞으로 60일
			이내에는 변경 할 수 없습니다.
		</h6>
		<input type="text" id="nik" value="닉네임"> <br> 
		<input type="text" id="email" value="E-mail"> <br> 
		<a href="/project/login/login.jsp"> <input type="button"
			id="cancleBtn" value="취소">
		</a> 
		<input type="button" id="joinBtn" value="회원가입">


	</div>
</form>