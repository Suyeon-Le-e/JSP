<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cal_form</title>
</head>
<body>  
<h2>계산기</h2>
<%
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	String oper = request.getParameter("oper");
%>
<form action="cal_form.jsp"method="post">
	<input type="text" name="num1"value="<%=num1%>">
	<select name="operator">
		<option>+</option>
		<option>-</option>
		<option>*</option>
		<option>/</option>
	</select>
	<input type="text" name="num2"value="<%=num1%>">
	<input type="submit" value="계산">
</form>
<hr>

<%
	if(num1 == null|| num1.equals("")){%>
		사칙연산 계신기 입니다.
	<%}else{%>
<%
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
	
<%} %>

</body>
</html>