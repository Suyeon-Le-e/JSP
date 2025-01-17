<%@page import="com.bigdata.dto.BoardDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bigdata.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:choose>
	<c:when test="${empty id}">
		<h1 class="content-title">Main-로그인 전</h1>
	</c:when>
	<c:when test="${id ne null}">
		<h1 class="content-title">Main-로그인 후</h1>
	</c:when>
</c:choose>

<div id="board-wrap">Total: ${count} / Page:  ${pageNum} /  ${pageCount}
<%@ include file="/layout/search.jsp" %>
	<table class="pos">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회</th>
		</tr>
		<c:forEach items="${boards}" var="board">
		<tr>
			<td>${board.idx}</td>
			<td class="btitle">
			<c:forEach begin="1" end="${board.indent*3}">&nbsp;</c:forEach>
			<c:url value="/mvcboard/view.do" var="view">
				<c:param name="idx" value="${board.idx}"/>
			</c:url>
			<a href="/${view}">${board.title}</a>
			</td>
			<td>${board.name}</td>
			<td>${board.regdate}</td>
			<td>${board.hit}></td>
		</tr>
		</c:forEach>
		<tr>
			<td colspan="5">
				<c:forEach var="i" begin="1" end="${pageCount}">
					<c:choose>
						<c:when test="${i == pageNum}">[${i}]</c:when>
						<c:when test="${i != pageNum}">
							<c:url value="/index.do?pageNum=${i}" var="index"/>
							<a href="${index}">[${i}]</a>
						</c:when>
					</c:choose>
				</c:forEach>
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