<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Revision</title>
    <link rel="stylesheet" href="/storyboard/css/common.css">
    <link rel="stylesheet" href="/storyboard/css/write.css">
</head>
<body>
    <header>
        <a href="/storyboard/html/index0.html">
            <img src="https://i.pinimg.com/originals/11/f4/90/11f490f709630c5ac00c56930928ee19.png" class="logo" alt="">
        </a>
        <nav>
            <ul class="nav-items">
                <li><a href="/storyboard/html/login/login.html">Login</a></li>
                <li> | </li>
                <li><a href="/storyboard/html/join/join.html">Join</a></li>
                <li> | </li>
                <li><a href="/storyboard/html/index0.html">게시판</a></li>
                <li> | </li>
                <li><a href="/storyboard/html/board/introduce.html">자기소개</a></li>
            </ul>
        </nav>
    </header>

    <div class="table">
        <table>
            <tr>
                <td colspan="2" class="top">글 수정하기</td>
            </tr>
            <tr>
                <td>작성자</td>
                <td><input type="text" class="writer"value="이수연"></td>
            </tr>
            <tr>
                <td>E-mail</td>
                <td><input type="text"class="email"value="sukie@com"></td>
            </tr>
            <tr>
                <td>홈페이지</td>
                <td><input type="text"class="home"value="http://sukie.com"></td>
            </tr>
            <tr>
                <td>제목</td>
                <td><input type="text" class="title"value="게시글1"></td>
            </tr>
            <tr>
                <td>내용</td>
                <td><textarea class="contents" name="contents" id="contents" cols="30" rows="10">가나다라마바사~ 너와나의 암호말</textarea></td>
            </tr>

            <tr>
                <td>비밀번호</td>
                <td><input type="password" class="pw"></td>
            </tr>
            <tr>
                <td colspan="2" class="top">
                    <input type="button" id="signupBtn" value="수정완료">
                    <input type="button" id="resetBtn" value="다시수정">
                    <a href="javascript:history.back();">
                        <input type="button"value="취소">
                    </a>
                </td>
            </tr>

        </table>

    </div>
    <script src="/storyboard/js/revision.js"></script>
    
    

    <footer>
        <p>이용약관  |  개인정보취급방침 </p> 
        <address>서울특별시 구로구 디지털로 306 (구로동, 대륭포스트타워 2차 212호,218호,219호)  |  t. 02-2082-1688  |  F. 031-000-0000</address>
        <p>Copyright ⓒ THEJOEUN ACADEMY Corp.. All Rights Reserved.</p>

    </footer>
    
</body>
</html>