<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete</title>
    <link rel="stylesheet" href="/project/css/common.css">
    <link rel="stylesheet" href="/project/css/board.css">
</head>
<body>
	<!-- header -->
    <header>
    	<%@include file = "/layout/header.jsp" %>
    </header>
    
    <div class="total">
		<%@include file = "delete_content.jsp" %>
    </div>
    <script src="/project/js/delete.js"></script>
    
	<!-- footer -->
	<footer>
		<%@include file = "/layout/footer.jsp" %>

    </footer>
   
</body>
</html>