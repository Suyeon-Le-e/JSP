<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<table>
	<tr>
		<td colspan="2" class="top">게시판 글쓰기</td>
	</tr>
	<tr>
		<td>작성자</td>
		<td><input type="text" class="writer"></td>
	</tr>
	<tr>
		<td>E-mail</td>
		<td><input type="text" class="email"></td>
	</tr>
	<tr>
		<td>홈페이지</td>
		<td><input type="text" class="home"></td>
	</tr>
	<tr>
		<td>제목</td>
		<td><input type="text" class="title"></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><textarea class="contents" name="contents" id="contents"
				cols="30" rows="10"></textarea></td>
	</tr>

	<tr>
		<td>비밀번호</td>
		<td><input type="password" class="pw"></td>
	</tr>
	<tr>
		<td colspan="2" class="top"><input type="button" id="signupBtn"
			value="등록"> <a href="javascript:history.back();"> <input
				type="button" value="취소">
		</a></td>
	</tr>

</table>