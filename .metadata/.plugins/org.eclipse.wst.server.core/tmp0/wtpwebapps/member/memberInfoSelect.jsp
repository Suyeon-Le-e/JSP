<%@page import="com.javalec.ex.MemberInfoDao"%>
<%@page import="com.javalec.ex.MemberInfoDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberInfoSelect.jsp</title>
</head>
<body>
<%
	//로그인 했냐?
String id = (String)session.getAttribute("id");
if(id == null){
%>
<a href="join.jsp">회원가입</a> / <a href="login.jsp">로그인</a>
<%
	}else {
%>
환영합니다 <%=id%> 님...
<%
	}
%>
<table border="1">
	<tr>
		<th>id</th><th>pw</th>
		<th>name</th><th>email</th>
		<th>address</th><th>regdate</th>
	</tr>
<%
	MemberInfoDao dao = MemberInfoDao.getInstance();
ArrayList<MemberInfoDto> dtos = dao.MemberInfoSelect();
for(MemberInfoDto item : dtos){
%>
	<tr>
		<th><%=item.getId() %></th><th><%=item.getPw() %></th>
		<th><%=item.getName() %></th><th><%=item.getEmail() %></th>
		<th><%=item.getAddress() %></th><th><%=item.getRegdate() %></th>
	</tr>
<%} %>
</table>
</body>
</html>