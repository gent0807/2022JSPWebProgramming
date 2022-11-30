<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String i=request.getParameter("id");
	String p=request.getParameter("pw");
	if(i.equals("dong")&&p.equals("12")){
		application.setAttribute("memberId", "ok"); // memberId="ok";
		application.setAttribute("idAtt", i);
		response.sendRedirect("01LoginForm.jsp");
	}else{
		response.sendRedirect("01LoginForm.jsp");
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