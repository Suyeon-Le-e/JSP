package com.javalec.ex;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginOk")
public class LoginOk extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public LoginOk() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		request.setCharacterEncoding("UTF-8");
		//1. 값을 받기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		//2. 값을 확인
		System.out.println(id);
		System.out.println(pw);
		//3. 뭐할건지 ==> DB연결설정
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String driver = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/bigdata";
		url += "?useSSl=false&serverTimezone=UTC";
		String uid = "root";
		String upw = "rootpass";
		String sql = "select name from member where id=? and pw=?";

		try{
			Class.forName(driver);	
			conn = DriverManager.getConnection(url,uid,upw);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			if(rs.next()){ //성공하면
				HttpSession httpSession = request.getSession();
				httpSession.setAttribute("userID",id);  //next값이 있다면 세션에 담아주기
				response.sendRedirect("myPage.jsp");
			}else{ //실패하면
				response.sendRedirect("login.jsp");
			}
		}catch(Exception e){
			e.printStackTrace();
			System.out.println(e.getMessage());
		}finally{
			
			
		}
	}

}
