<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %> <!-- 페이지 지시어 import 속성 -->
<%!
String str1 = "JSP";
String str2 = "안녕하세요..";
public int add(int a, int b){
	int c= a+b;
	return c;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HelloJSP</title>
</head>
<body>
<h2>처음 만들어보는 <%= str1 %></h2> 스크립트 요소(표현식)
<p>
<%
out.println(str2 + str1 + "입니다. 열공합시다^^*");
Date today= new Date();
out.println("<h1>오늘은 "+today+"</h1>");
%>
</p>
</body>			
</html>	