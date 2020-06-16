<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String data = request.getParameter("data");
	String times = request.getParameter("times");
	int iData = Integer.parseInt(data);
	String path = "";
	
	if(times.equals("02")){
		path = "send02.jsp?data=" + data;
		response.sendRedirect(path);
	}else{
		path = "send03.jsp?data=" + data;
		response.sendRedirect(path);
	}

%>