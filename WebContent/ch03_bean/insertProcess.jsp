<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="com.ch03.beans2.ResisterDTO" id="regBean" scope="session" />
<jsp:setProperty name="regBean" property="*" />
<jsp:useBean class="com.ch03.beans2.ResisterDAO" id="regMgr" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:getProperty name="regBean" property="memberid" />
<%
  regMgr.insertMember(regBean);
  out.println( regBean.getPassword() );
%>


</body>
</html>