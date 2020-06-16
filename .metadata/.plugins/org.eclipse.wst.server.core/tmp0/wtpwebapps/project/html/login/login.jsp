<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="../../css/common.css">
    <link rel="stylesheet" href="../../css/login.css">
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
            </ul>
        </nav>
    </header>

    <div class="login">
    <form name="loginForm"action="/storyboard/html/index1.html" method="post">
        <fieldset>
            <legend>로그인</legend><br>
            
            <span>ID: </span><input type="text" id="id" name="id"> <br>
            <span>PWD: </span><input type="password" id="pw" name="pw"> <br><br>

            <input type="button" id="loginBtn" value="로그인"> <br>

            <a href="/storyboard/html/join/join.html">회원가입</a>
            
        </fieldset>
    </form>
    </div>
    <script src="/storyboard/js/login.js"></script>

    <footer>
        <p>이용약관  |  개인정보취급방침 </p> 
        <address>서울특별시 구로구 디지털로 306 (구로동, 대륭포스트타워 2차 212호,218호,219호)  |  t. 02-2082-1688  |  F. 031-000-0000</address>
        <p>Copyright ⓒ THEJOEUN ACADEMY Corp.. All Rights Reserved.</p> 

    </footer>
    
</body>
</html>