<%@page import="com.javalec.ex.MemberInfoDao"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="dto" class="com.javalec.ex.MemberInfoDto" />
<jsp:setProperty property="*" name="dto" />

<%
	MemberInfoDao dao = MemberInfoDao.getInstance();
int ri = dao.confirmId(dto.getId());
if (ri == 1) {
%>
<script>
	alert('아이디가 이미 존재합니다.');
	history.back();
</script>
<%
	} else {
	ri = dao.memberInfoInsert(dto);
	if (ri == 1) {
%>
<script>
	alert('회원가입 성공.');
	location.href = "login.jsp";
</script>
<%
	} else {
%>
<script>
	alert('회원가입 실패 - 잠시후 다시 해주세요');
	history.back();
</script>
<%
	}
}
%>


