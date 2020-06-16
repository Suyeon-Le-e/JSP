package com.javalec.ex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



import com.progect.dto.MemberInfoDto;

public class MemberInfoDao {
	
	private static MemberInfoDao instance = new MemberInfoDao();
	
	//dbcp사용
	public MemberInfoDao() {
	}
	
	public static MemberInfoDao getInstance() {
		return instance;
	}
	
	private Connection getConnection() {
		Connection conn = null;
		conn = JDBCUtil.getConnection();
		
		return conn;
	}
	
	public ArrayList<MemberInfoDto> getMemberList(){
		ArrayList<MemberInfoDto> members = new ArrayList<MemberInfoDto>();
		MemberInfoDto member = new MemberInfoDto();
		//1. DB에서 꺼내와
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from memberinfo order by regdate desc";
		//conn
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(); //excute
			
			//rs에서 값 꺼내기
		while(rs.next()) {
			String id = rs.getString("id");
			String pw = rs.getString("pw");
			String name = rs.getString("name");
			String email = rs.getString("email");
			String address = rs.getString("address");
			String regdate = rs.getString("regdate");
			
			//회원한명 생성
			member = new MemberInfoDto(id, pw, name, email, address, regdate);
			//방에 넣기
			members.add(member);
		  }
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
		
		return members;  //db에서 꺼내서
	}
	
	public int userCheck(String id, String pw) {
		int ri = -1; // 없다면-1/로그인 성공 1/패스워드 실패0
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql =  "select pw from memberinfo where id = ? ";
		try {
			//1.conn
			conn = getConnection();
			//2.query
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				String dbPw = rs.getString("pw");
				if(pw.equals(dbPw)) {
					ri = 1; //성공
				}else {
					ri = 0; //패스워드 틀림
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
		return ri;
	}


}
