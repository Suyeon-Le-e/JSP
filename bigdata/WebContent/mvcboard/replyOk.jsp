<%@page import="com.bigdata.dto.BoardDto"%>
<%@page import="com.bigdata.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int ri = (int)request.getAttribute("ri");
int idx = (int)request.getAttribute("idx");
// 글 입력 처리 후 이동
%>
<script>
<%if(ri == 1) {%>
	alert('글답변 성공');
	location.href='<%=request.getContextPath()%>/index.do';
<%}else{ %>
	alert('글답변 실패');
	location.href='<%=request.getContextPath()%>/mvcboard/view.do?idx=<%=idx%>';
<%} %>
</script>







