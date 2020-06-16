<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Join</title>
    <link rel="stylesheet" href="/storyboard/css/common.css">
    <link rel="stylesheet" href="/storyboard/css/join.css">
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

    <div class="join">
        <form name="joinForm"action="/storyboard/html/index0.html" method="post">
            <h3 class="header">회원가입</h3> <br>
            <div class="form">
                <h3>사이트 이름정보 입력</h3>
                <input type="text" id="inid"value="아이디"> <br>
                <h6 class="ex">영문자, 숫자, _만 입력가능. 최소 3자이상 입력하세요.</h6>
                <input type="text" id="inpw"value="비밀번호"> <br>
                <input type="text" id="checkpw"value="비밀번호확인"> <br><br>

                <h3>개인정보 입력</h3>
                <input type="text" id="name"value="이름"> <br>
                <h6 class="ex">공백없이 한글, 영문, 숫자만 입력 가능 (한글2자, 영문4자 이상) <br>
                닉네임을 바꾸시면 앞으로 60일 이내에는 변경 할 수 없습니다.
                </h6>
                <input type="text" id="nik"value="닉네임"> <br>
                <input type="text" id="email"value="E-mail"> <br>
                <a href="/storyboard/html/login/login.html">
                    <input type="button" id="cancleBtn" value="취소">
                </a>
                <input type="button" id="joinBtn" value="회원가입">

    
            </div>
        </form>
    </div>
    <script src="/storyboard/js/join.js"></script>

    <footer>
        <p>이용약관  |  개인정보취급방침 </p> 
        <address>서울특별시 구로구 디지털로 306 (구로동, 대륭포스트타워 2차 212호,218호,219호)  |  t. 02-2082-1688  |  F. 031-000-0000</address>
        <p>Copyright ⓒ THEJOEUN ACADEMY Corp.. All Rights Reserved.</p>

    </footer>
    
</body>
</html>