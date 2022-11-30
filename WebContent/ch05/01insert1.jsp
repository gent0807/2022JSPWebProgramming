<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String memberId = request.getParameter("memberId");
	String pass=request.getParameter("password");
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	
	Class.forName("com.mysql.cj.jdbc.Driver");//java.lang의 Class 클래스의 forName 메소드: 드라이버 메모리에 로딩, 커넥팅 로딩
	
	Connection conn=null;
	Statement stmt=null;
	
	try{
		String jdbcDriver="jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC&useSSL=false&useUnicode=true&characterEncoding=utf-8";
		String dbUser="root";
		String dbPass="dongyang";
		conn=DriverManager.getConnection( jdbcDriver, dbUser, dbPass);//DB연결 (DB명서버주소 /DB, 계정, 비번 )
		stmt=conn.createStatement();//쿼리를 실행할 statement 객체 생성
		stmt.executeUpdate("insert into membertbl values('"+memberId+"','"+pass+"','"+name+"','"+email+"')");
		
	}catch(Exception e){
		
	}finally{
		conn.close(); 
		stmt.close();
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