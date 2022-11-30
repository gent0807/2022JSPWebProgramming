<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String i="";
	String p="";
%>
<%
i= request.getParameter("id");//전역변수
p= request.getParameter("pw");//전역변수
session.setAttribute("id",i);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>너의 아이디는 <%= i%>, 비번은 <%= p%> 이다.</h3> 	
	
	<%
	if (i.equals("dong") && p.equals("123")){
		//로그인 성공
		response.sendRedirect("02ResponseWelcome.jsp");  //request를 유도해낸다
	}else{
	
	%>
	<!-- 중첩태그시엔 태그를 끝에서 닫아준다 -->
	<jsp:forward page="02ForwardFail.jsp"/>  <!-- 바로 response -->
	<%
	
	}

	%>
	
</body>
</html>