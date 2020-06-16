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
String url = "jdbc:mysql://localhost:3306/bigdata";
url += "?useSSl=false&serverTimezone=UTC";
String uid = "root";
String upw = "rootpass";
String sql = "select id,pw,name,email,address,regdate from member";
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
	stmt = conn.createStatement(); //위에 넣어줘서 실행만시키면 됨
	rs = stmt.executeQuery(sql);
	while(rs.next()){
		String id = rs.getString("id");
		String pw = rs.getString("pw");
		String name = rs.getString("name");
		String email = rs.getString("email");
		String address = rs.getString("address");
		String regdate = rs.getString("regdate");
%>
<a href="join.jsp">회원가입</a>

id : <%=id %> / pw : <%=pw %> / 
name : <%=name %> / email : <%=email %>/ 
address : <%=address %> / regdate : <%=regdate %> <br>
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