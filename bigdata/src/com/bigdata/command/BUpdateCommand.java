package com.bigdata.command;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bigdata.dao.BoardDao;
import com.bigdata.dto.BoardDto;

public class BUpdateCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		String sIdx = request.getParameter("idx");
		int idx = Integer.parseInt(sIdx);
		String name = request.getParameter("bname");
		String email = request.getParameter("bemail");;
		String homepage = request.getParameter("bhomepage");;
		String title = request.getParameter("btitle");;
		String content = request.getParameter("bcontent");;
		String pw = request.getParameter("bpw");; 

		// dao
		BoardDao dao = BoardDao.getInstance();
		// dto
		BoardDto board = null;
		// 비밀번호 체크 idx , pw
		board = dao.getBoardOne(idx);
		int ri = -1; //비번틀림
		if(pw.equals(board.getPw())){  // 비번 맞으면
			// 글 하나 생성
			board = new BoardDto(name, email, homepage, title, content, pw);
			// update 실행
			ri = dao.setBoardUpdate(board, idx); //1성공 /0실패
		}
		
		request.setAttribute("ri", ri);
		request.setAttribute("idx", idx);
	}

}
