<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="id" value="abcde"/>
ID : <c:out value="${id}"/> <br>
<c:remove var="id" />
ID-remove : <c:out value="${id}"/>
<hr>
<c:catch var="error">
	${2/0}
</c:catch>
<c:out value="${error}"></c:out>
<hr>
<c:if test="${ 1+2 == 3}">
	1 + 2 = 3
</c:if>
<c:if test="${ 1+2 != 3}">
	1 + 2 != 3
</c:if>

<hr>
<c:forEach var="i" begin="0" end="10" step="3">
	${i}
</c:forEach>
</body>
</html>