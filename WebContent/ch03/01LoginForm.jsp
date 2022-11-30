<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String logincheck=(String)application.getAttribute("memberId"); //get이 먼저 일어나도 변수에 null이 저장되어 오류는 아니다.
	String loginid=(String)application.getAttribute("idAtt");
	if(logincheck == null){
		

	}else{

%>

	<%= loginid %>님 환영합니다!
	
	<form action="01LogOut.jsp" method="post">
		<input type="submit" value="로그아웃">
	</form>
<%
	}
	
%>
	
</body>
</html>