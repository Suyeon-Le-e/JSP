<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Connection conn = null;
Statement stmt = null;
PreparedStatement pstmt = null;

request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String email = request.getParameter("email");
String address = request.getParameter("address");

if(id == null)response.sendRedirect("join.jsp"); //없는지 다시확인

String driver = "com.mysql.cj.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/bigdata";
url += "?useSSl=false&serverTimezone=UTC";
String uid = "root";
String upw = "rootpass";

//두개는 같음 
String sql = "insert into member(id,pw,name,email,address)";
sql += " values('"+id+"','"+pw+"','"+name+"','"+email+"','"+address+"')";

String psql  = "insert into member(id,pw,name,email,address)";
psql += " values(?,?,?,?,?)";  
%>

<%
try{
	Class.forName(driver);	
	conn = DriverManager.getConnection(url,uid,upw);
	pstmt = conn.prepareStatement(psql);
	pstmt.setString(1,id);
	pstmt.setString(2,pw);
	pstmt.setString(3,name);
	pstmt.setString(4,email);
	pstmt.setString(5,address);
	int n = pstmt.executeUpdate();
	
	response.sendRedirect("memberData.jsp");
	
}catch(Exception e){
	out.println(e.getMessage());
}finally{
	if(pstmt != null) pstmt.close();
	if(conn != null) conn.close();
}
%>