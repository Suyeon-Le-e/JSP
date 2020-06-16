<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<table>
	<tr>
		<td colspan="2" class="top">글 수정하기</td>
	</tr>
	<tr>
		<td>작성자</td>
		<td><input type="text" class="writer" value="이수연"></td>
	</tr>
	<tr>
		<td>E-mail</td>
		<td><input type="text" class="email" value="sukie@com"></td>
	</tr>
	<tr>
		<td>홈페이지</td>
		<td><input type="text" class="home" value="http://sukie.com"></td>
	</tr>
	<tr>
		<td>제목</td>
		<td><input type="text" class="title" value="게시글1"></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><textarea class="contents" name="contents" id="contents"
				cols="30" rows="10">가나다라마바사~ 너와나의 암호말</textarea></td>
	</tr>

	<tr>
		<td>비밀번호</td>
		<td><input type="password" class="pw"></td>
	</tr>
	<tr>
		<td colspan="2" class="top">
		<input type="button" id="signupBtn"value="수정완료"> 
		<input type="button" id="resetBtn" value="다시수정">
		<a href="javascript:history.back();"> <input type="button"
				value="취소">
		</a></td>
	</tr>

</table>
