<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id = (String)session.getAttribute("userID");	
	if(id == null){	%>
<script>
	alert('잘못된 접근입니다');
	location.href='/project/login/login.jsp';
</script>
<%} %>
