package com.bigdata.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bigdata.dao.BoardDao;
import com.bigdata.dto.BoardDto;

public class BReplyInfoCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// 답변할 글번호 받기
		String sIdx = request.getParameter("idx");
		int idx = Integer.parseInt(sIdx);	

		BoardDao  dao = BoardDao.getInstance();
		// 수정할 글 내용 가져오기
		BoardDto board = dao.getBoardOne(idx);
		
		request.setAttribute("board", board);
		request.setAttribute("idx", idx);
	}

}
