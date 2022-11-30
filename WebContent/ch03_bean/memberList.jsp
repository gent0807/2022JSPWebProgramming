<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.ch03.beans2.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="top.jsp" %>
<h2>회원목록</h2>
<jsp:useBean class="com.ch03.beans2.ResisterDAO" id="regMgr2" scope="session" />
<%
	ArrayList<ResisterDTO> vList=regMgr2.selectMemberList();
	for(int i=0; i<vList.size(); i++){
		ResisterDTO regBean=(ResisterDTO)vList.get(i);
		out.println(regBean.getMemberid()+",");
		out.println(regBean.getPassword()+",");
		out.println(regBean.getName()+",");
		out.println(regBean.getEmail()+"<br>");
	}
%>
</body>
</html>