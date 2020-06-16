<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calOk.jsp</title>
</head>
<body>
<%
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	String oper = request.getParameter("oper");
	int n1 = Integer.parseInt(num1);
	int n2 = Integer.parseInt(num2);
	int result = 0;
	if(oper.equals("+")){
		result = n1 + n2;
	}else if(oper.equals("-")){
		result = n1 - n2;
	}else if(oper.equals("*")){
		result = n1 * n2;
	}else if(oper.equals("/")){
		result = n1 / n2;
	}
%>
<%=n1 %> <%=oper %> <%=n2 %> = <%=result %><br>
<a href="cal_form.html">[다시하기]</a>

</body>
</html>