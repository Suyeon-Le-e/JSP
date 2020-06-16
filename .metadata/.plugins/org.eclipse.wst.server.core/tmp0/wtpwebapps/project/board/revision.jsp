<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Revision</title>
    <link rel="stylesheet" href="/project/css/common.css">
    <link rel="stylesheet" href="/project/css/write.css">
</head>
<body>
	<!-- header -->
    <header>
    	<%@include file = "/layout/header.jsp" %>
    </header>

    
    <div class="table">
		<%@include file = "revision_content.jsp" %>
    </div>
    <script src="/project/js/revision.js"></script>
    
    
	<!-- footer -->
	<footer>
		<%@include file = "/layout/footer.jsp" %>

    </footer>
   
</body>
</html>