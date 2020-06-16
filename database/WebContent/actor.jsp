<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
String driver = "com.mysql.cj.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/sakila";
url += "?useSSl=false&serverTimezone=UTC";
String uid = "root";
String upw = "rootpass";
String sql = "select actor_id,first_name,last_name,last_update from actor";
sql += " limit 10";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>actor.jsp</title>
</head>
<body>
<%
try{
	Class.forName(driver);	
	conn = DriverManager.getConnection(url,uid,upw);
	stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);
	while(rs.next()){
		int actor_id = rs.getInt("actor_id");
		String first_name = rs.getString("first_name");
		String last_name = rs.getString("last_name");
		String last_update = rs.getString("last_update");
%>
actor_id : <%=actor_id %> / first_name : <%=first_name %> / 
last_name : <%=last_name %> / last_update : <%=last_update %> <br>
<%
	}
}catch(Exception e){
	out.println(e.getMessage());
}finally{
	if(rs != null) rs.close();
	if(stmt != null) stmt.close();
	if(conn != null) conn.close();
}
%>
</body>
</html>