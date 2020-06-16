<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr><th>2단</th></tr>
	<tr><td>2 * 1 = 2</td></tr>
	<tr><td>2 * 2 = 4</td></tr>
	<tr><td>2 * 3 = 6</td></tr>
	<tr><td>2 * 4 = 8</td></tr>
	<tr><td>2 * 5 = 10</td></tr>
	<tr><td>2 * 6 = 12</td></tr>
	<tr><td>2 * 7 = 14</td></tr>
	<tr><td>2 * 8 = 16</td></tr>
	<tr><td>2 * 9 = 18</td></tr>

</table>
<hr>

<table border="1">
	<%for(int j=2;j<=9;j++){ %>
		<tr><th><%=j %>단</th></tr>
		<%for(int i=1;i<10;i++){%>
		<tr><td><%=j %> * <%=i %> = <%=(j*i) %></td></tr>
		<%} %>
	<%} %>
	
</table>
<hr>

<table border="1">
<%for(int i=0;i<10;i++){%>
<tr>	
	<%for(int j=2;j<=9;j++){
		if(i==0){%>
		<th><%=j %>단</th>
		<%}else{ %>
		<td><%=j %> * <%=i %> = <%=j*i %></td>
		<%} %>
	<%} %>
</tr>	
<%} %>
</table>

<table border="1">
<%for(int k=1;k<7;k=k+3){%>
	<%for(int i=0;i<10;i++){%>
	<tr>	
		<%for(int j=k;j<k+3;j++){
			if(i==0){%>
			<th><%=j%>단</th>
			<%}else{ %>
			<td><%=j %> * <%=i %> = <%=j*i %></td>
			<%} %>
		<%} %>
	</tr>	
	<%} %>
<%} %>
</table>



</body>
</html>