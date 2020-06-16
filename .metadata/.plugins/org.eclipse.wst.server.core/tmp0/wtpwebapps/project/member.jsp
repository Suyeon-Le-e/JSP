<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String id = null;
	id = (String)session.getAttribute("userName");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>index.jsp</title>
    <link rel="stylesheet" href="/project/css/common.css">
    <link rel="stylesheet" href="/project/css/board.css">
</head>
<body>
	<!-- header -->
	
    <header>
		<%@include file = "/layout/header.jsp" %>
    </header>

    
    <div class="total">
		<%@include file = "member_content.jsp" %>
    </div>
    
	<!-- footer -->
	<footer>
	<%out.println(id); %>
		<%@include file = "/layout/footer.jsp" %>
		
    </footer>
   
</body>
</html>
