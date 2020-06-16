<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="student" class="com.jsp.ex.Student" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

Name:<jsp:getProperty property="name" name="student"/><br>
AGE:<jsp:getProperty property="age" name="student"/><br>
GRADE:<jsp:getProperty property="grade" name="student"/><br>
StudentNum:<jsp:getProperty property="studentNum" name="student"/><br>

</body>
</html>