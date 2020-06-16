<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Main</title>
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/board.css">
</head>
<body>
	<!-- header -->
    <%@include file = "header.jsp" %>
    
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
        <%for(int i=9;i>1;i--){ %>
        <tr>
            <td><%=i %></td>
            <td><a href="./board/read1.jsp">게시글<%=i %></a></td>
            <td>이수연</td>
            <td>2020/01/01</td>
            <td>0</td>
        </tr>
        <%} %>
        
        <tr>
            <td colspan="5">
            <%for(int i=1;i<6;i++){ %>
            	<a href=""><%=i %></a>
            <%} %>
            </td>
        </tr>
    </table>
    </div><br>
    <div class="btn">
        <a href="./board/write.jsp">
            <input type="button" value="글쓰기">
        </a>
    </div>
    </div>
    
	<!-- footer -->
	<%@include file = "footer.jsp" %>
   
</body>
</html>