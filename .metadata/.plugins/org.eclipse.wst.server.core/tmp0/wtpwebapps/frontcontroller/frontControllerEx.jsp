<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>frontControllerEx.jsp</title>
</head>
<body>
<a href="insert.do">insert</a>
<hr>
<a href="<%=request.getContextPath()%>/update.do">update</a>
<hr>
<a href="/frontcontroller/select.do">select</a>
<hr>
<a href="delete.do">delete</a>
</body>
</html>