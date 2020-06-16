<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestobj.jsp</title>
</head>
<body>
<%
	String serverName = request.getServerName();
	int serverPort = request.getServerPort();
	String method = request.getMethod();
	String protocol = request.getProtocol();
	StringBuffer url = request.getRequestURL();
	String uri = request.getRequestURI();
	String remoteAddr = request.getRemoteAddr();
	String servletPath = request.getServletPath();
	String contextPath = request.getContextPath();
%>
ServerName : <%=serverName %><br>
ServerPort : <%=serverPort %><br>
method : <%=method %><br>
protocol : <%=protocol %><br>
url : <%=url %><br>
uri : <%=uri %><br>
remoteAddr : <%=remoteAddr %><br>
serveletPath : <%=servletPath %><br>
contextPath : <%=contextPath %><br>


</body>
</html>