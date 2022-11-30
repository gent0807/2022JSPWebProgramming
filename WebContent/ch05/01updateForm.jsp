<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
</head>
<body>
	<form action="01update.jsp" method="post">
		수정시킬 아이디: <input type="text" name="memberid">
		새로운 이름:  <input type="text" name="name">
		 <input type="submit" name="변경">
	</form>
</body>
</html>