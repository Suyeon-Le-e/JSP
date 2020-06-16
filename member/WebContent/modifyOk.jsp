<%@page import="com.javalec.ex.MemberInfoDto"%>
<%@page import="com.javalec.ex.MemberInfoDao"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//값 받아야지
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	MemberInfoDto dto = new MemberInfoDto(id,pw,name,email,address);
	
	//db일시켜야지 (dao)
	MemberInfoDao dao = MemberInfoDao.getInstance();
int ri = dao.memberInfoModify(dto); //0실패 1성공
%>
<%if (ri == 1) {%>
<script>
	alert('정보가 수정되었습니다.');
	location.href = "modify.jsp";
</script>
<%} else {%>
<script>
	alert('회원정보 수정에 실패했습니다.');
	location.href = "modify.jsp";
</script>
<%} %>

