package com.database.ex;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JoinOk
 */
@WebServlet("/JoinOk")
public class JoinOk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinOk() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		
		//request
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		
		// java
		Connection conn = null;
		PreparedStatement pstmt = null; // select, insert, update, delete
		//ResultSet rs = null; // select
		
		String driver = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/bigdata";
		url += "?useSSl=false&serverTimezone=UTC";
		String uid = "root";
		String upw = "rootpass";
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,uid,upw);
			String psql  = "insert into member(id,pw,name,email,address)";
			psql += " values(?,?,?,?,?)"; 
			pstmt = conn.prepareStatement(psql);
			pstmt.setString(1,id);
			pstmt.setString(2,pw);
			pstmt.setString(3,name);
			pstmt.setString(4,email);
			pstmt.setString(5,address);
			int ri = pstmt.executeUpdate();
			if(ri == 1) {
				response.sendRedirect("login.jsp");
			}else {
				response.sendRedirect("join.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			
				try {
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			
		}
		
		
	}

}
