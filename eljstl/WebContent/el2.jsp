<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="com.el.jstl.ex.MemberInfoDto"/>
<jsp:setProperty value="aaaa" property="id" name="member"/>
<jsp:setProperty value="1234" property="pw" name="member"/>
<jsp:setProperty value="홍길동" property="name" name="member"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
ID : <jsp:getProperty property="id" name="member"/><br>
PW : <jsp:getProperty property="pw" name="member"/><br>
NAME : <jsp:getProperty property="name" name="member"/><br>
<hr>
ID : ${member.id }<br>
PW : ${member.pw }<br>
NAME : ${member.name }<br>

</body>
</html>