package com.ch03.beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ResisterDAO {
	String jdbcDriver="jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC&useSSL=false&useUnicode=true&characterEncoding=utf-8";
	String dbUser="root";
	String dbPass="dongyang";
	
	Connection conn=null;
	PreparedStatement pstmt=null;
	
	
	public ResisterDAO() throws ClassNotFoundException{
		Class.forName("com.mysql.cj.jdbc.Driver");//java.lang의 Class 클래스의 forName 메소드: 드라이버 메모리에 로딩, 커넥팅 로딩
	}
	public void insertMember(ResisterDTO mem) throws SQLException {
		conn=DriverManager.getConnection( jdbcDriver, dbUser, dbPass);//DB연결 (DB서버주소 /DB명, 계정, 비번 )
		pstmt=conn.prepareStatement("insert into membertbl values(?, ?, ?, ?);");//쿼리를 실행할 statement 객체 생성
		pstmt.setString(1, mem.getMemberid());
		pstmt.setString(2, mem.getPassword());
		pstmt.setString(3, mem.getName());
		pstmt.setString(4, mem.getEmail() );
		pstmt.executeUpdate();
	}
	
}
