<%@page import="com.bigdata.dto.BoardDto"%>
<%@page import="com.bigdata.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 글 입력 처리 후 이동
	int ri = (int)request.getAttribute("ri");
%>
<script>
<%if(ri == 1) {%>
	alert('글쓰기 성공');
	location.href='<%=request.getContextPath()%>/index.do';
<%}else{ %>
	alert('글쓰기 실패');
	location.href='<%=request.getContextPath()%>/mvcboard/write.do';
<%} %>
</script>







