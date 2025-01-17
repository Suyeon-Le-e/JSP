<%@page import="com.bigdata.dto.BoardDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bigdata.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
ArrayList<BoardDto>boards = (ArrayList<BoardDto>)request.getAttribute("boards");
int count = (int)request.getAttribute("count");
int pageCount = (int)request.getAttribute("pageCount");
int pageNum = (int)request.getAttribute("pageNum");
int pageList = (int)request.getAttribute("pageList");
%>

<%if(session.getAttribute("id") == null) {%>	
<h1 class="content-title">Main-로그인 전</h1>
<%}else {%>
<h1 class="content-title">Main-로그인 후</h1>
<%} %>
<div id="board-wrap">Total: <%=count %> / Page: <%=pageNum %> / <%=pageCount %>
<%@ include file="/layout/search.jsp" %>
	<table class="pos">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회</th>
		</tr>
		<%
		int cnt = count - pageList * (pageNum - 1);
		if(boards.size() > 0){
			String viewPath = "";
			for (BoardDto board : boards) {
				viewPath = request.getContextPath()+"/mvcboard/view.do?idx="+board.getIdx();
				String space = "";
				int spaceCount = board.getIndent() * 2;
				for(int i=0;i<=spaceCount;++i){
					space += "&nbsp;";
				}
		%>
		<tr>
			<td><%=cnt--%></td>
			<td class="btitle"><%=space %><a href="<%=viewPath%>"><%=board.getTitle() %></a></td>
			<td><%=board.getName() %></td>
			<td><%=board.getRegdate() %></td>
			<td><%=board.getHit() %></td>
		</tr>
		<%
			}
		}else{
			out.println("<tr><td colspan='6'>게시글이 없습니다.</td></tr>");
		}
		%>
		<tr>
			<td colspan="5">
				<%
					for (int i = 1; i <= pageCount; i++) {
				%> 
					<%if(i == pageNum){ %>
					<strong>[<%=i%>]</strong> 
					<%}else{ %>
					<a href="<%=request.getContextPath() %>/index.do?pageNum=<%=i%>">[<%=i%>]</a>
					<%} %>
				<%
 					}
 				%>
			</td>
		</tr>
		<tr>
			<td colspan="5">
			<a href="<%=request.getContextPath() %>/mvcboard/write.do" class="btn">글쓰기</a>
			<a href="<%=request.getContextPath() %>/mvcboard/fwrite.do" class="btn">파일업로드</a>
			</td>
		</tr>
	</table>
</div>