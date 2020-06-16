<%@page import="com.javalec.ex.MemberInfoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    	//값 받기
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");

    //DB관련 일 해야됨 -> 로그인 함수userCheck() 부르기
    MemberInfoDao dao = MemberInfoDao.getInstance();
    int ri = dao.userCheck(id, pw);
%>

<%if(ri == -1) {%>
<script>
	alert('회원정보가 없습니다.');
	history.back();
</script>
<%}else if(ri == 0) {%>
<script>
	alert('비밀번호가 틀렸습니다.');
	history.back();
</script>
<%}else if(ri == 1) {
	//session
	session.setAttribute("id", id);
%>
<script>
	alert('환영합니다.');
	location.href = "main.jsp";
</script>
<%}%>