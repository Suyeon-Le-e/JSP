
<%@page import="com.bigdata.dto.BoardDto"%>
<%@page import="com.bigdata.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%

	BoardDto board = (BoardDto)request.getAttribute("board");
	int idx= board.getIdx();
	String content = board.getContent().replace("\n", "<br>");

%>
<h1 class="content-title">글 읽기</h1>
<div id="board-wrap">
	<table class="pos">
		<tr>
			<th>작성자</th>
			<td><%=board.getName() %></td>
			<th>작성일</th>
			<td><%=board.getRegdate() %></td>
		</tr>
		<tr>
			<th>E-mail</th>
			<td><%=board.getEmail() %></td>
			<th>홈페이지</th>
			<%if(board.getHomepage().length() == 0){ %>
			<td></td>
			<%}else{ %>
			<td><a href="<%=board.getHomepage() %>" target="_blank"><%=board.getHomepage() %></a></td>
			<%} %>
			
		</tr>
		<tr>
			<th>제목</th>
			<td colspan="3"><%=board.getTitle() %></td>
		</tr>
		<tr>
			<td colspan="4">
				<%=content %>
			</td>

		</tr>
		<tr>
			<td colspan="4" class="readnum">조회수 : <%=board.getHit() %>&nbsp;</span>
			</td>

		</tr>
	</table>

	<div class="btnwrap">
		<a href="<%=request.getContextPath() %>/index.do" class="btn white">목록</a> 
		<a href="<%=request.getContextPath() %>/mvcboard/update.do?idx=<%=idx %>" class="btn">수정</a> 
		<a href="<%=request.getContextPath() %>/mvcboard/reply.do?idx=<%=idx %>" class="btn">답변</a> 
		<a href="<%=request.getContextPath() %>/mvcboard/delete.do?idx=<%=idx %>" class="btn">삭제</a>
	</div>
</div>