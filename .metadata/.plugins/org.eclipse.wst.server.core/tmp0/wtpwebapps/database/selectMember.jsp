<%@page import="java.util.ArrayList"%>
<%@page import="com.database.dto.MemberDto"%>
<%@page import="com.database.dao.MemberDao"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
MemberDao dao = new MemberDao();
ArrayList<MemberDto> members = null;
members = dao.selectMember();
String searchId = "hong1";
MemberDto m = dao.selectOneMember(searchId);

%>
<%
	for(MemberDto member : members){
%>
ID: <%=member.getId() %><br>
PW: <%=member.getPw() %><br>
<%
	}
%>
    