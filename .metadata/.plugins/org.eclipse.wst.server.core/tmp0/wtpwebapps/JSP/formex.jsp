<%@page import="java.util.Iterator"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formex.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");   //한글처리
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String[] hobby = request.getParameterValues("hobby");
	String major = request.getParameter("major");
	String protocol = request.getParameter("protocol");
	String speak = request.getParameter("speak");
%>
Name : <%=name %><br>
ID : <%=id %><br>
PW : <%=pw %><br>
Hobby : <%=Arrays.toString(hobby) %><br>
Major : <%=major %><br>
Protocol : <%=protocol %><br>
Speak : <%=speak %><br>

<hr>
<%
String key;
int i = 0;
Iterator<String> params = (Iterator)request.getParameterNames();
while(params.hasNext()){
	key = params.next();
	if(key.equals("hobby")){
		for(String item : hobby){
			out.println(key + i + ":" + item + "<br>");
			i++;
		}
	}else{
		out.println(key + ":" + request.getParameter(key) + "<br>");
	}
}
%>


</body>
</html>