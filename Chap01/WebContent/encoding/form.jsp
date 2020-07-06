<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- 
	contentType의 인코딩 설정
	- JSP 페이지에서 생성할 HTML 응답의 charset(캐릭터셋) 설정
	- response를 보낼 때의 charset
	
	
	
	pageEncoding의 인코딩 설정
	- JSP코드가 JAVA코드로 변환될 때 사용할 charset 설정
	- 즉, JAVA코드의 charset이다.

 -->    
    
    
<!DOCTYPE html>
<html>
<head>


<!-- HTML의 인코딩 설정
	-여기에 선언된 인코딩 방식으로 웹 브라우저가 응답받은 문서를 해석한다.
	- 클라이언트의 웹 브라우저(크롬)에서 이 응답을 해석할 때 사용할 인코딩 타입의 설정
	- 클라이언트가 response를 받은 이후의 charset	
 -->
 
 
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<h3>GET</h3>
<form action="./control.jsp" method ="GET">
	<input name ="test" value="홍길동"><input type="submit">
</form>


<h3>POST</h3>
<form action="./control.jsp" method ="POST">
	<input name ="test" value="홍길동"><input type="submit">
</form>



</body>
</html>