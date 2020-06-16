<%@page import="com.database.dto.MemberDto"%>
<%@page import="com.database.dao.MemberDao"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// web 
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String email = request.getParameter("email");
String address = request.getParameter("address");

// java - db
MemberDao dao = new MemberDao();
MemberDto member = new MemberDto(id, pw, name, email, address);

int ri = dao.joinMember(member);

if(ri == 1){
	response.sendRedirect("login.jsp");
}else{
	response.sendRedirect("join.jsp");
}
	
%>