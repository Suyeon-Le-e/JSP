<%@page import="com.bigdata.dto.BoardDto"%>
<%@page import="com.bigdata.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int ri = (int)request.getAttribute("ri");
	int idx = (int)request.getAttribute("idx");
	
	if(ri==1){
%>
<script>
	alert('삭제 성공');
	location.href='<%=request.getContextPath()%>/index.do';
</script>
<%		
	}else if(ri == 0){
%>
<script>
	alert('삭제 실패');
	location.href='<%=request.getContextPath()%>/delete.do?idx=<%=idx%>';
</script>
<%		
	
	} else{
%>
<script>
	alert('비번이 틀렸어요');
	location.href='<%=request.getContextPath()%>/delete.do?idx=<%=idx%>';
</script>
<%}%>


