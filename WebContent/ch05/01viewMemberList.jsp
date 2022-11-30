<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<%
	//자바 클래스 필드는 초기화가된다. int는 0으로
	//그러나 메소드 지역변수는 초기화되지 않는다
	
	Class.forName("com.mysql.cj.jdbc.Driver");//java.lang의 Class 클래스의 forName 메소드: 드라이버 메모리에 로딩, 커넥팅 로딩
	
	Connection conn=null;   
	Statement stmt=null;
	
	try{
		String jdbcDriver="jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC&useSSL=false&useUnicode=true&characterEncoding=utf-8";
		String dbUser="root";
		String dbPass="dongyang";
		conn=DriverManager.getConnection( jdbcDriver, dbUser, dbPass);//DB연결 (DB서버주소 /DB명, 계정, 비번 )
		stmt=conn.createStatement();//쿼리를 실행할 statement 객체 생성
		ResultSet rs=stmt.executeQuery("select * from membertbl;");
		while(rs.next()){
			out.println(rs.getString("memberid")+", ");
			out.println(rs.getString("password")+", ");
			out.println(rs.getString("name")+", ");
			out.println(rs.getString("email")+"<br> "); 
		}
		
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
<!-- 쿼리 실행 메소드 executeUpdate(): select를 제외한 모든 쿼리 실행을 할 때 호출,executeQuery():select 쿼리문 실행을 할때 호출 -->
<!-- close -->