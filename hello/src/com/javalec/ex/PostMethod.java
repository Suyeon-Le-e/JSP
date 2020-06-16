package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PostMethod
 */
@WebServlet("/PostMethod")
public class PostMethod extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostMethod() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		response.setContentType("text/html; charset=utf-8"); 
		PrintWriter writer = response.getWriter();
		writer.println("<html><head><title>PostMethod</head></title>");
		writer.println("<body>");
		writer.println("<h1>");
		writer.println("Get방식으로 호출되었어요!");
		writer.println("</h1>");
		writer.println("</body>");
		writer.println("</html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		response.setContentType("text/html; charset=utf-8"); 
		PrintWriter writer = response.getWriter();
		writer.println("<html><head><title>PostMethod</head></title>");
		writer.println("<body>");
		writer.println("<h1>");
		writer.println("Post방식으로 호출되었어요!");
		writer.println("</h1>");
		writer.println("</body>");
		writer.println("</html>");
	}

}
