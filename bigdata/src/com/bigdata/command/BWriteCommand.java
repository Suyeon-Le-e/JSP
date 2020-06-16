package com.bigdata.command;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bigdata.dao.BoardDao;
import com.bigdata.dto.BoardDto;

public class BWriteCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		// 넘어온 데이터 받기 => dao 보내기
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		String name = request.getParameter("bname");
		String email = request.getParameter("bemail");;
		String homepage = request.getParameter("bhomepage");;
		String title = request.getParameter("btitle");;
		String content = request.getParameter("bcontent");;
		String pw = request.getParameter("bpw");; 
		// 글 하나 생성
		BoardDto board = new BoardDto(name, email, homepage, title, content, pw);

		//dao
		BoardDao dao = BoardDao.getInstance();

		// insert
		int ri = dao.setBoardWrite(board);
		
		request.setAttribute("ri",ri);
	}

}
