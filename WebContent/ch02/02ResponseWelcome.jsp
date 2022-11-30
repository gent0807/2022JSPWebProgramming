<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id=(String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성공</title>
</head>
<body>
<h1>로그인 성공! 환영합니다.<%= id %></h1>
</body>
</html>