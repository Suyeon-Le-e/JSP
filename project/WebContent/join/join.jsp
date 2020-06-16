<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Join</title>
<link rel="stylesheet" href="/project/css/common.css">
<link rel="stylesheet" href="/project/css/join.css">
</head>
<body>
	<!-- header -->
    <header>
    	<%@include file = "/layout/header.jsp" %>
    </header>

    
    <div class="join">
		<%@include file = "join_content.jsp" %>
    </div>
    
    <script src="/project/js/join.js"></script>
    
	<!-- footer -->
	<footer>
		<%@include file = "/layout/footer.jsp" %>

    </footer>
   
</body>
</html>