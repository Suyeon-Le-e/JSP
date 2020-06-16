package com.javalec.ex;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class lifecycle
 */
@WebServlet("/lifecycle")
public class lifecycle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public lifecycle() {
        super();
        // TODO Auto-generated constructor stub
    }

	public void init(ServletConfig config) throws ServletException {
		System.out.println("태어나서 한번 실행");
	}

	public void destroy() {
		System.out.println("죽기전에 한번 실행");
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("나는 서비스의 왕이야~!");
		String method = req.getMethod(); //get /post
		if(method.equals("GET")) {
			doGet(req, resp);
		}else if(method.equals("POST")) {
			doPost(req, resp);
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Get으로 요청하면 매번실행");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Post으로 요청하면 매번실행");
	}

}
