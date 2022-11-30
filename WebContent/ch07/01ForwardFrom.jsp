<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="01ForwardTo.jsp" method="post"> <!--파일명 대소문자 구분  -->
		이름: <input type=text name="name" placeholder="홍길동">
		색 선택:-
		<select name="color">
			<option value="blue">파랑색</option>   <!-- option 태그에 value 속성을 지정하지 않으면 태그 안의 내용(파랑색)이 넘어간다. -->
			<option value="red">빨강색</option> 
 		</select> <br>
 		<input type="submit" value="확인"> <!--submit 타입으로 value 값을 지정하지않으면 제출이 value -->	
	</form>
</body>
</html>