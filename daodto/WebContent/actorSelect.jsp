<%@page import="java.util.ArrayList"%>
<%@page import="daodto.ActorDto"%>
<%@page import="daodto.ActorDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>actorSelect.jsp</title>
</head>
<body>
<table border="1">
<tr>
<th>actor_id</th><th>first_name</th>
<th>last_name</th><th>last_update</th>
</tr>
<%
ActorDao dao = new ActorDao(); //driver는 로딩됨
ArrayList<ActorDto> dtos = dao.actorSelect(10); //conn부터 return dtos까지 
for(ActorDto actor : dtos){
%>
<tr>
<th><%=actor.getActorId() %></th><th><%=actor.getFirstName() %></th>
<th><%=actor.getLastName() %></th><th><%=actor.getLastUpdate() %></th>
</tr>
<%} %>
</table>
</body>
</html>