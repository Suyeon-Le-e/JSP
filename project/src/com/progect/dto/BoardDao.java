package com.progect.dto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.javalec.ex.JDBCUtil;

public class BoardDao {

	private static BoardDao instance = new BoardDao();
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	//dbcp사용
	private BoardDao() {

	}

	public static BoardDao getInstance() {
		return instance;
	}

	private Connection getConnection() {
		Connection conn = null;
		conn = JDBCUtil.getConnection();
		
		return conn;
	}
	
	
	//글목록 전체 가져오기
	public ArrayList<BoardDto> getBoardAll() {
		ArrayList<BoardDto> boards = new ArrayList<BoardDto>();
		BoardDto board = null;
		String sql = "select * from board order by idx desc";

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				int idx = rs.getInt("idx");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String homepage = rs.getString("homepage");
				String title = rs.getString("title");
				String content = rs.getString("content");
				String pw = rs.getString("pw");
				int hit = rs.getInt("hit");
				String regdate = rs.getString("regdate");

				board = new BoardDto(idx, name, email, homepage, title, content, pw, hit, regdate);
				boards.add(board);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs,pstmt,conn);
		}

		return boards;
	}

	//글1개 가져오기
	public BoardDto getBoardOne(int idx) {

		BoardDto board = null;
		String sql = "select * from board where idx = ?";

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,idx);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				String name = rs.getString("name");
				String email = rs.getString("email");
				String homepage = rs.getString("homepage");
				String title = rs.getString("title");
				String content = rs.getString("content");
				String pw = rs.getString("pw");
				int hit = rs.getInt("hit");
				String regdate = rs.getString("regdate");

				board = new BoardDto(idx, name, email, homepage, title, content, pw, hit, regdate);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs,pstmt,conn);
		}

		return board;
	}

}
