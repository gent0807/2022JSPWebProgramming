<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>내장 객체 - request</title></head>
<body>
    <h2>1. 클라이언트와 서버의 환경정보 읽기</h2>
    <% String i= "Hello"; %>
    <a href="01RequestWebInfo.jsp?eng=<%= i %>&han=안녕"">  <!--GET 방식으로 요청--> <!-- 발생시킨 request에 대해 response 될 페이지에  변수 전달-->
      GET 방식 전송
    </a>
    <br />
    <form action="01RequestWebInfo.jsp" method="post">  <!--POST 방식으로 요청-->
        영어 : <input type="text" name="eng" value="Bye" /><br />
        한글 : <input type="text" name="han" value="잘 가" /><br />
        <input type="submit" value="POST 방식 전송" />
    </form>

    <h2>2. 클라이언트의 요청 매개변수 읽기</h2>
    <form method="post" action="01RequestParameter.jsp">  <!--다양한 <input> 태그 사용-->
        아이디 : <input type="text" name="id" value="" /><br />	
        성별 :
        <input type="radio" name="gen" value="man" />남자
        <input type="radio" name="gen" value="woman" checked="checked" />여자
        <br />
        관심사항 :
        <input type="checkbox" name="favo" value="eco" />경제
        <input type="checkbox" name="favo" value="pol" checked="checked" />정치
        <input type="checkbox" name="favo" value="ent" />연예<br />
        자기소개:
        <textarea name="intro" cols="30" rows="4"></textarea>
        <br />
        <input type="submit" value="전송하기" />
    </form>

    <h2>3. HTTP 요청 헤더 정보 읽기</h2>
    <a href="01RequestHeader.jsp">  <!--HTTP 요청 헤더 읽기-->
        요청 헤더 정보 읽기
    </a>    
</body>
</html>

<!-- HTTP 구조 , HTTP 메소드들의 차이, URL과 URI의 차이-->