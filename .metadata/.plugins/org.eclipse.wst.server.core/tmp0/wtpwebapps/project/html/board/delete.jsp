<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete</title>
    <link rel="stylesheet" href="/storyboard/css/common.css">
    <link rel="stylesheet" href="/storyboard/css/board.css">
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

    <div class="total">
        <table>
            <tr>
                <td class="menu" width=400px>작성자의 비밀번호를 입력해주세요</td>
            </tr>
            <tr>
                <td>
                    <input type="password" class="depw">
                </td>
            </tr>
        </table> <br>
        
        <input type="button" id="deleteBtn" value="삭제완료">
        
        <a href="javascript:history.back();">
            <input type="button"value="취소">
        </a>
        
    </div>
    <script src="/storyboard/js/delete.js"></script>
    
    

    <footer>
        <p>이용약관  |  개인정보취급방침 </p> 
        <address>서울특별시 구로구 디지털로 306 (구로동, 대륭포스트타워 2차 212호,218호,219호)  |  t. 02-2082-1688  |  F. 031-000-0000</address>
        <p>Copyright ⓒ THEJOEUN ACADEMY Corp.. All Rights Reserved.</p>

    </footer>
    
</body>
</html>