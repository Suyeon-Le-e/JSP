package com.bigdata.command;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bigdata.dao.BoardDao;
import com.bigdata.dto.BoardDto;

public class BReplyCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// 넘어온 데이터 받기 => dao 보내기
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String sIdx = request.getParameter("idx");
		int idx = Integer.parseInt(sIdx);
		String name = request.getParameter("bname");
		String email = request.getParameter("bemail");
		String homepage = request.getParameter("bhomepage");
		String title = request.getParameter("btitle");;
		String content = request.getParameter("bcontent");
		String pw = request.getParameter("bpw"); 
		String sGroup = request.getParameter("group"); 
		String sStep = request.getParameter("step"); 
		String sIndent = request.getParameter("indent"); 
		int group = Integer.parseInt(sGroup);
		int step = Integer.parseInt(sStep);
		int indent = Integer.parseInt(sIndent);
		// 글 하나 생성
		BoardDto board = new BoardDto(name, email, homepage, title, content, pw, group, step, indent);

		//dao
		BoardDao dao = BoardDao.getInstance();

		// insert
		int ri = dao.setBoardReply(board);
		
		request.setAttribute("ri", ri);
		request.setAttribute("idx", idx);
	}

}
