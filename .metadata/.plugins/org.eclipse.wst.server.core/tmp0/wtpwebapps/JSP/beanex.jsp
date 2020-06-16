<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="student" class="com.jsp.ex.Student" scope="page"/>
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


Name:<jsp:getProperty property="name" name="student"/><br>
AGE:<jsp:getProperty property="age" name="student"/><br>
GRADE:<jsp:getProperty property="grade" name="student"/><br>
StudentNum:<jsp:getProperty property="studentNum" name="student"/><br>
</body>
</html>