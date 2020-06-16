<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function infoConfirm() {
	var form = document.reg_frm;
	if(form.id.value.length === 0){
		alert('id를 넣으세요');
		form.id.focus();
		return;
	}
	if(form.pw.value.length === 0){
		alert('pw를 넣으세요');
		form.pw.focus();
		return;
	}
	if(form.pw_check.value.length === 0){
		alert('re-pw를 넣으세요');
		form.pw_check.focus();
		return;
	}
	if(form.pw.value !== form.pw_check.value){
		alert('pw와 re-pw는 같아야합니다');
		form.pw_check.focus();
		return;
	}
	if(form.name.value.length === 0){
		alert('name을 넣으세요');
		form.name.focus();
		return;
	}
	if(form.email.value.length === 0){
		alert('email을 넣으세요');
		form.email.focus();
		return;
	}
	if(form.address.value.length === 0){
		alert('address를 넣으세요');
		form.address.focus();
		return;
	}
	form.submit();
}

</script>
</head>
<body>
<h2>회원가입</h2>
<form action="joinOk2.jsp" method="post" name="reg_frm">
	ID: <input type="text" name="id" size="20"><br>
	PW: <input type="password" name="pw" size="20"><br>
	RE-PW: <input type="password" name="pw_check" size="20"><br>
	Name: <input type="text" name="name" size="20"><br>
	E-mail: <input type="text" name="email" size="20"><br>
	Address: <input type="text" name="address" size="50"><br>
	<input type="button" value="회원가입" onclick="infoConfirm()">
	<input type="reset" value="Reset">
</form>
</body>
</html>