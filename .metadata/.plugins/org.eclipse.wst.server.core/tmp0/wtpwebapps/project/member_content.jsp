<%@page import="com.progect.dto.MemberInfoDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.javalec.ex.MemberInfoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>




    <div class="table">
    <table>
        <tr>
            <td>num</td>
            <td>id</td>
            <td>pw</td>
            <td>name</td>
            <td>email</td>
            <td>address</td>
            <td>regdate</td>
        </tr>
        <%
        	//db에서 전체 정보가져오기 
        	//ArrayList<MemberInfoDto>
        MemberInfoDao dao = MemberInfoDao.getInstance();
        ArrayList<MemberInfoDto> memberList = dao.getMemberList();
        
        int i = 1;
        for(MemberInfoDto member : memberList){%>
        <tr>
            <td><%=i %></td>
            <td><%=member.getId() %></td>
            <td><%=member.getPw() %></td>
            <td><%=member.getName() %></td>
            <td><%=member.getEmail() %></td>
            <td><%=member.getAddress() %></td>
            <td><%=member.getRegdate() %></td>
        </tr>
        <%
        	i++;
        	} 
        %>
        
      
    </table>
    </div><br>


