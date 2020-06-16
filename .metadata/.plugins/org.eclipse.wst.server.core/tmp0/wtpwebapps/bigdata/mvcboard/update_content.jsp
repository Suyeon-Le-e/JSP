<%@page import="com.bigdata.dto.BoardDto"%>
<%@page import="com.bigdata.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
BoardDto board = (BoardDto)request.getAttribute("board");
int idx = (int)request.getAttribute("idx");
%>	
	
<h1 class="content-title">글 수정하기</h1>
<div id="board-wrap">
	<form action="<%=request.getContextPath() %>/mvcboard/updateOk.do" method="post">
		<input type="hidden" name="idx" value="<%=idx%>">
		<table class="pos">
			<tr>
				<td>작성자</td>
				<td><input type="text" name="bname" id="bname" value="<%=board.getName()%>"></td>
			</tr>
			<tr>
				<td>E-Mail</td>
				<td><input type="text" name="bemail" id="bemail" value="<%=board.getEmail()%>"></td>
			</tr>
			<tr>
				<td>홈페이지</td>
				<td><input type="text" name="bhomepage" id="bhomepage" value="<%=board.getHomepage()%>"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="btitle" id="btitle" value="<%=board.getTitle()%>"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="bcontent" id="bcontent" cols="30" rows="10"><%=board.getContent()%></textarea></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" name="bpw" id="bpw" value=""></td>
			</tr>
		</table>

		<div class="btnwrap">
			<div class="btn" id="updateBtn">수정 완료</div>
			<div class="btn white" id="resetBtn">다시수정</div>
			<a href="javascript:history.back();" class="btn white"">뒤로</a>
		</div>
	</form>
</div>