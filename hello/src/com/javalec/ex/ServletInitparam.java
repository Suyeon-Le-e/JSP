package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/ServletInitparam"},initParams = {@WebInitParam(name="id",value="sukie"),@WebInitParam(name="pw", value="1234"),@WebInitParam(name="path",value="D:/bigdata/jsp/jspws")})
public class ServletInitparam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletInitparam() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		String id = getInitParameter("id");
		String pw = getInitParameter("pw");
		String path = getInitParameter("path");
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter write = response.getWriter();  //통로뚫기 
		write.println("ID : " + id + "<br>" );
		write.println("PW : " + pw + "<br>" );
		write.println("PATH : " + path + "<br>" );
		write.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		String id = getInitParameter("id");
		String pw = getInitParameter("pw");
		String path = getInitParameter("path");
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter write = response.getWriter();  //통로뚫기 
		write.println("ID : " + id + "<br>" );
		write.println("PW : " + pw + "<br>" );
		write.println("PATH : " + path + "<br>" );
		write.close();
	}

}
