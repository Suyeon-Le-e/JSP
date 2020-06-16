<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	session.invalidate();  //모든세션지우기
	response.sendRedirect("/project/index.jsp"); //메인으로 보내기
%>
