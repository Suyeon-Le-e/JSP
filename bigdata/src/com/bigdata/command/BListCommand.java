package com.bigdata.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bigdata.dao.BoardDao;
import com.bigdata.dto.BoardDto;

public class BListCommand implements BCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		int pageSize = 3;
		int pageNum = 0;

		if(request.getParameter("pageNum") == null) {
			pageNum = 1;
		}else {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
		}

		
		//한페이지 list count
		int pageList = 5;

		//글 목록 전체 가져오기
		BoardDao dao = BoardDao.getInstance();
		ArrayList<BoardDto> boards = dao.getBoardAll(pageNum, pageList);

		//전체 list count
		int count = dao.getCount();

		//page count
		int pageCount = (int)Math.ceil((double)count / pageList) ;
		
		//request
		request.setAttribute("boards", boards);
		request.setAttribute("count", count);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("pageList", pageList);
	}





}

