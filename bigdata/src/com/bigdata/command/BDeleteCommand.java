package com.bigdata.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bigdata.dao.BoardDao;
import com.bigdata.dto.BoardDto;

public class BDeleteCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		// deleteOk.jsp
		String sIdx = request.getParameter("idx");
		int idx = Integer.parseInt(sIdx);
		String pw = request.getParameter("bpw");

		// dao
		BoardDao dao = BoardDao.getInstance();

		// dto
		BoardDto board = null;

		// idx, pw 체크
		board = dao.getBoardOne(idx);
		int ri = -1;   //비밀번호실패
		if(pw.equals(board.getPw())){
			// delete 실행	
			ri = dao.setBoardDelete(idx); //성공1 / 실패0	
		}
		
		//request
		request.setAttribute("ri",ri);
		request.setAttribute("idx",idx);
	}

}
