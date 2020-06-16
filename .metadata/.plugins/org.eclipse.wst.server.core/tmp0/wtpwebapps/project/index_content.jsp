<%@page import="com.progect.dto.BoardDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.progect.dto.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//글 목록 전체 가져오기
BoardDao dao = BoardDao.getInstance();
ArrayList<BoardDto> boards = dao.getBoardAll();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div class="table">
    <table>
        <tr>
            <td class="num">번호</td>
            <td class="title">제목</td>
            <td class="writer">작성자</td>
            <td class="writedate">작성일</td>
            <td class="show">조회</td>
        </tr>
        <%
        if(boards.size()>0){
        	String viewPath = "";
        	for(BoardDto board : boards){ 
        		viewPath = request.getContextPath()+"/board/read1.jsp?idx="+board.getIdx();
        %>
        <tr>
            <td><%=board.getIdx() %></td>
            <td><a href="<%=viewPath%>"><%=board.getTitle() %></a></td>
            <td><%=board.getName() %></td>
            <td><%=board.getRegdate() %></td>
            <td><%=board.getHit() %></td>
        </tr>
        <%	}
        }else{
        	out.println("<tr><td colspan='6'>게시글이 없습니다</td></tr>");
        }
        
        %>
        
        <tr>
            <td colspan="5">
            <%for(int i=1;i<6;i++){ %>
            	<a href=""><%=i %></a>
            <%} %>
            </td>
        </tr>
    </table>
    </div><br>
    <div class="btn">
        <a href="/project/board/write.jsp">
            <input type="button" value="글쓰기">
        </a>
    </div>

</body>
</html>