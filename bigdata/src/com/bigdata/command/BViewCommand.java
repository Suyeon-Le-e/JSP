package com.bigdata.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bigdata.dao.BoardDao;
import com.bigdata.dto.BoardDto;

public class BViewCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String sIdx = request.getParameter("idx");
		int idx = Integer.parseInt(sIdx);	
		BoardDao dao = BoardDao.getInstance();
		// 조회수 증가시켜
		dao.setBoardHit(idx);	
		// 글 1개 가져오기
		BoardDto board = dao.getBoardOne(idx);
		
		//request.set
		request.setAttribute("board", board);
	}

}
