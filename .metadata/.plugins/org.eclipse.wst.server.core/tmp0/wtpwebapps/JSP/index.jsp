<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>/index.jsp</title>
    <link rel="stylesheet" href="./css/common.css">
    <link rel="stylesheet" href="./css/board.css">
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

    
    <div class="total">
    <div class="table">
    <table>
        <tr>
            <td class="num">번호</td>
            <td class="title">제목</td>
            <td class="writer">작성자</td>
            <td class="writedate">작성일</td>
            <td class="show">조회</td>
        </tr>
    <%for(int i=0;i<6;i++){ %>
        <tr>
            <td><%=i %></td>
            <td><a href="/storyboard/html/board/read1.html">게시글<%=i %></a></td>
            <td>이수연</td>
            <td>2020/01/01</td>
            <td>0</td>
        </tr>
    <%} %>

        <tr>
            <td>2</td>
            <td><a href="/storyboard/html/board/read1.html">게시글2</a></td>
            <td>이수연</td>
            <td>2020/01/01</td>
            <td>0</td>
        </tr>
        <tr>
            <td>1</td>
            <td><a href="/storyboard/html/board/read1.html">게시글1</a></td>
            <td>이수연</td>
            <td>2020/01/01</td>
            <td>0</td>
        </tr>
        <tr>
            <td colspan="5">1</td>
        </tr>
    </table>
    </div><br>
    <div class="btn">
        <a href="/storyboard/html/board/write.html">
            <input type="button" value="글쓰기">
        </a>
    </div>
    </div>
    

    <footer>
        <p>이용약관  |  개인정보취급방침 </p> 
        <address>서울특별시 구로구 디지털로 306 (구로동, 대륭포스트타워 2차 212호,218호,219호)  |  t. 02-2082-1688  |  F. 031-000-0000</address>
        <p>Copyright ⓒ THEJOEUN ACADEMY Corp.. All Rights Reserved.</p>

    </footer>
    
</body>
</html>