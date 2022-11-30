<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String memberId = request.getParameter("memberId");
	String name=request.getParameter("name");
	
	Class.forName("com.mysql.cj.jdbc.Driver");//java.lang의 Class 클래스의 forName 메소드: 드라이버를 메모리에 로딩, 커넥팅 로딩
	
	Connection conn=null;
	PreparedStatement pstmt=null;
	
	try{
		String jdbcDriver="jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC&useSSL=false&useUnicode=true&characterEncoding=utf-8";
		String dbUser="root";
		String dbPass="dongyang";
		conn=DriverManager.getConnection( jdbcDriver, dbUser, dbPass);//DB연결 (DB서버주소 /DB명, 계정, 비번 )
		pstmt=conn.prepareStatement("update membertbl set name=? where memberid=? ;");//쿼리를 실행할 statement 객체 생성
		pstmt.setString(1, name );
		pstmt.setString(2, memberId);
		pstmt.executeUpdate();
		
		
	}catch(Exception e){
		
	}finally{
		conn.close();
		pstmt.close();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
<!-- 드라이버 로딩 -->
<!-- DB연결 (DB서버주소 /DB명, 계정, 비번 )-->
<!-- 쿼리 실행 -->
<!-- close -->