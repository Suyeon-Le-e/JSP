<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
<%  //id:abcd  pw:1234
String id = request.getParameter("id");
String pw = request.getParameter("pw");

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
String driver = "com.mysql.cj.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/bigdata";
url += "?useSSl=false&serverTimezone=UTC";
String uid = "root";
String upw = "rootpass";
String sql = "select name from member where id=? and pw=?";

try{
	Class.forName(driver);	
	conn = DriverManager.getConnection(url,uid,upw);
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, pw);
	rs = pstmt.executeQuery();
	if(rs.next()){ //성공하면
		session.setAttribute("userID",id);  //next값이 있다면 세션에 담아주기
		response.sendRedirect("myPage.jsp");
	}else{ //실패하면
		response.sendRedirect("login.jsp");
	}
}catch(Exception e){
	out.println(e.getMessage());
}finally{
	
}

%>