<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="02style.css">
</head>
<body>
	<jsp:include page="03top.jsp" flush="false">
	<jsp:param value="" name=""/>
	</jsp:include>
	
	<section>
	<h1> 환영합니다. 동양미래대학교입니다.</h1>
	<img src="img/welcome.jpg">
	</section>
	<%@ include file="03footer.jsp" %>
</body>
</html>
<!-- flush false의 이유 -->