package com.bigdata.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bigdata.command.BCommand;
import com.bigdata.command.BDeleteCommand;
import com.bigdata.command.BListCommand;
import com.bigdata.command.BReplyCommand;
import com.bigdata.command.BReplyInfoCommand;
import com.bigdata.command.BUdateInfoCommand;
import com.bigdata.command.BUpdateCommand;
import com.bigdata.command.BViewCommand;
import com.bigdata.command.BWriteCommand;

/**
 * Servlet implementation class BoardController
 */
@WebServlet("*.do")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BoardController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		actionDo(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		actionDo(request,response);
	}

	private void actionDo(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("actionDo");
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String uri = request.getRequestURI();
//		String contextPath = request.getContextPath();
//		String com = uri.substring(contextPath.length());

		String viewPage = null;
		BCommand command = null;
		System.out.println(uri);
		if(uri.equals("/bigdata/index.do") || uri.equals("/bigdata/")) {
			System.out.println(uri);
			command = new BListCommand();
			command.execute(request, response);
			viewPage = "/index_mvc_jstl.jsp";
		}else if(uri.equals("/bigdata/index_mvc.do")) {
			System.out.println(uri);
			command = new BListCommand();
			command.execute(request, response);
			viewPage = "/index_mvc.jsp";
		}else if(uri.equals("/bigdata/mvcboard/view.do")) {
			System.out.println(uri);
			command = new BViewCommand();
			command.execute(request, response);
			viewPage = "/mvcboard/view.jsp";
		}else if(uri.equals("/bigdata/mvcboard/delete.do")) {
			System.out.println(uri);
			viewPage = "/mvcboard/delete.jsp";
		}else if(uri.equals("/bigdata/mvcboard/deleteOk.do")) {
			System.out.println(uri);
			command = new BDeleteCommand();
			command.execute(request, response);
			viewPage = "/mvcboard/deleteOk.jsp";
		}else if(uri.equals("/bigdata/mvcboard/write.do")) {
			System.out.println(uri);
			viewPage = "/mvcboard/write.jsp";
		}else if(uri.equals("/bigdata/mvcboard/writeOk.do")) {
			System.out.println(uri);
			command = new BWriteCommand();
			command.execute(request, response);
			viewPage = "/mvcboard/writeOk.jsp";
		}else if(uri.equals("/bigdata/mvcboard/update.do")) {
			System.out.println(uri);
			command = new BUdateInfoCommand();
			command.execute(request, response);
			viewPage = "/mvcboard/update.jsp";
		}else if(uri.equals("/bigdata/mvcboard/updateOk.do")) {
			System.out.println(uri);
			command = new BUpdateCommand();
			command.execute(request, response);
			viewPage = "/mvcboard/updateOk.jsp";
		}else if(uri.equals("/bigdata/mvcboard/reply.do")) {
			System.out.println(uri);
			command = new BReplyInfoCommand();
			command.execute(request, response);
			viewPage = "/mvcboard/reply.jsp";
		}else if(uri.equals("/bigdata/mvcboard/replyOk.do")) {
			System.out.println(uri);
			command = new BReplyCommand();
			command.execute(request, response);
			viewPage = "/mvcboard/replyOk.jsp";
		}
		
		
		
		if(viewPage != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			try {
				dispatcher.forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
