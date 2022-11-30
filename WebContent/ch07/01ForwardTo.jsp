<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%	
	request.setCharacterEncoding("utf-8");
	String na=request.getParameter("name"); //id 속성이 아니다. id 속성은 js
	String selectColor=request.getParameter("color");
	String selectPage="01"+selectColor+".jsp";
%>
</head>
<body>
	<jsp:forward page="<%=selectPage%>">
		<jsp:param name="sc" value="<%=selectColor %>"/>
		<jsp:param name="n" value="<%= na %>"/>
	</jsp:forward>
</body>
</html>