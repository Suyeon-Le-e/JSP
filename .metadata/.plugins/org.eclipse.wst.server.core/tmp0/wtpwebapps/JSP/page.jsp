<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	int i=10;
	String str = "abcde";
	public int sum (int a, int b){
		return a+b;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	int[] iArr = {10, 20, 30};
	out.println(Arrays.toString(iArr));
%>
<%=Arrays.toString(iArr) %>
<%
	out.println("i = " + i + "<br>");
%>
str = <%=str %> <br>
<%
	out.println("sum = " + sum(1,5) + "<br>");
%>
sum=<%=sum(1,5) %>

<!-- 
HTML주석 : 화면상에는 안보이지만 코드상에서는 보임
-->
<%-- 
JSP주석 : 걍안보임
--%>

</body>
</html>