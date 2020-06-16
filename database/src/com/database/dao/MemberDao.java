package com.database.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.database.dto.MemberDto;

public class MemberDao {
	private String driver = "com.mysql.cj.jdbc.Driver";
	private String url = "jdbc:mysql://localhost:3306/sakila?useSSl=false&serverTimezone=UTC";
	private String uid = "root";
	private String upw = "rootpass";

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public MemberDao() {
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}


	//method
	public int joinMember(MemberDto member) { // 회원가입  web x
		int ri = 0;
		String psql  = "insert into member(id,pw,name,email,address)";
		psql += " values(?,?,?,?,?)"; 
		try {
			
			conn = DriverManager.getConnection(url,uid,upw);
			pstmt = conn.prepareStatement(psql);
			pstmt.setString(1,member.getId());
			pstmt.setString(2,member.getPw());
			pstmt.setString(3,member.getName());
			pstmt.setString(4,member.getEmail());
			pstmt.setString(5,member.getAddress());
			int n = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {


		}


		return ri;
	}

	public int loingMember() { // 로그인
		int ri = 0;
		return ri;
	}

	public ArrayList<MemberDto> selectMember() { // 전체 회원가저오기
		ArrayList<MemberDto> members = null;
	try {
		String psql = "select id,pw,name,email,address,regdate from member";
		conn = DriverManager.getConnection(url,uid, upw);
		pstmt = conn.prepareStatement(psql);
		rs  = pstmt.executeQuery();
		MemberDto member = null;
		if(rs.next()) {
			String id = rs.getString("id");
			String pw = rs.getString("pw");
			String name = rs.getString("name");
			String email = rs.getString("email");
			String address = rs.getString("address");
			member = new MemberDto(id, pw, name, email, address);
			members.add(member);
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {


	}


	return members;
}

	public MemberDto selectOneMember(String id) { // 전체 회원가저오기
		MemberDto member = null;
	try {
		String psql = "select id,pw,name,email,address,regdate from member where id=?";
		conn = DriverManager.getConnection(url,uid, upw);
		pstmt = conn.prepareStatement(psql);
		pstmt.setString(1, id);
		rs  = pstmt.executeQuery();
		if(rs.next()) {
			String pw = rs.getString("pw");
			String name = rs.getString("name");
			String email = rs.getString("email");
			String address = rs.getString("address");
			member = new MemberDto(id, pw, name, email, address);
			
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {


	}


	return member;
}

}
