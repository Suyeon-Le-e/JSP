<%@page import="com.progect.dto.BoardDto"%>
<%@page import="com.progect.dto.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	//글 한개 가져오기
	String sIdx = request.getParameter("idx");
	int idx = Integer.parseInt(sIdx);
	BoardDao dao = BoardDao.getInstance();
	BoardDto board = dao.getBoardOne(idx);
%>
<table>
	<h2>글읽기</h2>
	<br>
	<tr>
		<td class="menu">작성자</td>
		<td><%=board.getName() %></td>
		<td class="menu">작성일</td>
		<td><%=board.getRegdate() %></td>
	</tr>
	<tr>
		<td class="menu">E-mail</td>
		<td><%=board.getEmail() %></td>
		<td class="menu">홈페이지</td>
		<%if(board.getHomepage().length() == 0){ %>
		<td></td>
		<%}else{ %>
		<td><a href="<%=board.getHomepage()%>" target="_blank"><%=board.getHomepage() %></a></td>
		<%} %>
		
	</tr>
	<tr>
		<td class="menu">제목</td>
		<td colspan="3"><%=board.getTitle() %></td>
	</tr>
	<tr>
		<td class="contents" colspan="4"><%=board.getContent() %></td>
	</tr>
	<tr>
		<td colspan="4">조회수: <%=board.getHit() %></td>
	</tr>
</table>
<br>
<a href="/project/index.jsp"> <input type="button"
	value="목록">
</a>
<a href="/project/board/revision.jsp"> <input type="button"
	value="수정">
</a>
<a href="/project/board/respond.jsp"> <input type="button"
	value="답변">
</a>
<a href="/project/board/delete.jsp"> <input type="button"
	value="삭제">
</a>
