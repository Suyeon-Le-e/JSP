package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FormEx")
public class FormEx extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FormEx() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String[] hobby = request.getParameterValues("hobby"); //복수의 값 가져옴
		String major = request.getParameter("major");
		String protocol = request.getParameter("protocol");
		String speak = request.getParameter("speak");
		System.out.println(name);
		System.out.println(id);
		System.out.println(pw);
		System.out.println(Arrays.toString(hobby));
		System.out.println(major);
		System.out.println(protocol);
		System.out.println(speak);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		writer.println("<html><head><title>Form Data Submit</title></head>");
		writer.println("<body>");
		writer.println("NAME : "+name+"<br>");
		writer.println("ID : "+id+"<br>");
		writer.println("PW : "+pw+"<br>");
		writer.println("HOBBY : "+Arrays.toString(hobby)+"<br>");
		writer.println("MAJOR : "+major+"<br>");
		writer.println("PROTOCOL : "+protocol+"<br>");
		writer.println("SPEAK : "+speak+"<br>");
		writer.println("</body>");
		writer.println("</html>");
	}

}
