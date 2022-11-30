<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	application.removeAttribute("memberId");
	response.sendRedirect("01LoginForm.jsp");
%>