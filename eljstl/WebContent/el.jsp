<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el.jsp</title>
</head>
<body>
<%=10 %><br>
<%=99.99 %><br>
<%="ABC" %><br>
<%=true %><br>
<hr>
${10 }<br>
${99.99 }<br>
${"ABC" }<br>
${true }<br>
<hr>
${1+2 }<br>
${1>2 }<br>
${(1>2) || (1<2)}<br>
${1>2 ? 1 : 2 }<br>




</body>
</html>