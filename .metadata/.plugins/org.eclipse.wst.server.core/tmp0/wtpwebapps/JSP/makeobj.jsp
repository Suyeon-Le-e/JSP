<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="student" class="com.jsp.ex.Student" scope="request"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beanex.jsp</title>
</head>
<body>
<jsp:setProperty property="name" name="student" value="홍길동"/> 
<jsp:setProperty property="age" name="student" value="16"/> 
<jsp:setProperty property="grde" name="student" value="6"/> 
<jsp:setProperty property="studentNum" name="student"value="7"/> 

<jsp:forward page="useObj_request.jsp"/>
<a href="useObj_session.jsp">session use Object</a>
</body>
</html>