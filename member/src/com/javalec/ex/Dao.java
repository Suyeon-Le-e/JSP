package com.javalec.ex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Dao {
	
	private static Dao instance = new Dao();
	private static String memberInfoSelect = "select * from memberinfo order by regdate desc";
	private static String confirmId = "select count(id) as cnt from memberinfo where id = ?";
	private static String memberInfoInsert = "insert into memberInfo(id,pw,name,email,address) values(?,?,?,?,?)";
	private static String userCheck = "select pw from memberinfo where id = ? ";
	private static String getMemberInfo = "select * from memberinfo where id = ? ";
	private static String memberInfoModify = "update memberinfo set pw=?, name=?, email=?, address=? where id = ?";
	private static String memberInfoDelete = "delete from memberinfo where id = ?";
	
	//dbcp사용
	public Dao() {
	}
	
	public static Dao getInstance() {
		return instance;
	}
	
	private Connection getConnection() {
		Connection conn = null;
		conn = JDBCUtil.getConnection();
		
		return conn;
	}
	
	public ArrayList<MemberInfoDto> MemberInfoSelect() {
		ArrayList<MemberInfoDto> dtos = new ArrayList<MemberInfoDto>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			//0.sql
			//1.conn
			conn = getConnection();
			//2.query
			pstmt = conn.prepareStatement(memberInfoSelect);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String address = rs.getString("address");
				String regdate = rs.getString("regdate");
				
				MemberInfoDto member = new MemberInfoDto(id, pw, name, email, address, regdate);
				dtos.add(member);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
		return dtos;
	}

	public int memberInfoInsert(MemberInfoDto dto) {
		int ri = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			//1.conn
			conn = getConnection();
			//2.query
			pstmt = conn.prepareStatement(memberInfoInsert);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getAddress());
			ri = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt, conn);
		}
		return ri;
	}

	public int confirmId(String id) {
		int ri = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			//1.conn
			conn = getConnection();
			//2.query
			pstmt = conn.prepareStatement(confirmId);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				ri = rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
		return ri;
	}

	public int userCheck(String id, String pw) {
		int ri = -1; // 없다면-1/로그인 성공 1/패스워드 실패0
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			//1.conn
			conn = getConnection();
			//2.query
			pstmt = conn.prepareStatement(userCheck);
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

	public MemberInfoDto getMemberInfo(String id) {
		MemberInfoDto dto = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			//1.conn
			conn = getConnection();
			//2.query
			pstmt = conn.prepareStatement(getMemberInfo);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				String pw = rs.getString("pw");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String address = rs.getString("address");
				String regdate = rs.getString("regdate");
				dto = new MemberInfoDto(id, pw, name, email, address, regdate);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
		return dto;
	}

	public int memberInfoModify(MemberInfoDto dto) {
		int ri = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			//1.conn
			conn = getConnection();
			//2.query
			pstmt = conn.prepareStatement(memberInfoModify);
			pstmt.setString(1, dto.getPw());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getEmail());
			pstmt.setString(4, dto.getAddress());
			pstmt.setString(5, dto.getId());
			ri = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt, conn);
		}
		return ri;
	}

	public int memberInfoDelete(String id) {
		int ri = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			//1.conn
			conn = getConnection();
			//2.query
			pstmt = conn.prepareStatement(memberInfoDelete);
			pstmt.setString(1, id);

			ri = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt, conn);
		}
		return ri;
	}


}
