
<%@page import="com.javalec.ex.MemberInfoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%if(session.getAttribute("id") == null){//1. 로그인체크
	response.sendRedirect("login.jsp");
} %>

<%  //2. 값 받아야지
	String pw = request.getParameter("pw");
	String id = (String)session.getAttribute("id");
%>

<%  //3. db에서 확인 dao
	MemberInfoDao dao = MemberInfoDao.getInstance();
%>

<% //4. pw맞는지 확인
	int ri = dao.userCheck(id, pw);  //1성공 0실패
%>

<% // 실패 / 성공 분기
	if(ri == 0){ //실패
		out.println("<script>");
		out.println("alert('비밀번호가 틀렸습니다!');");
		out.println("history.back();");
		out.println("</script>");
	}else if(ri == 1){ //성공
		ri = dao.memberInfoDelete(id); //1성공 / 0실패
		if(ri == 0){ //실패
			out.println("<script>");
			out.println("alert('회원 탈퇴 실패! 잠시후 다시해주세요');");
			out.println("history.back();");
			out.println("</script>");
		}else if(ri == 1){
			session.invalidate(); //로그인정보 삭제
			out.println("<script>");
			out.println("alert('회원 탈퇴가 정상처리 되었습니다.');");
			out.println("location.href='login.jsp';");
			out.println("</script>");
		}
	}
%>


