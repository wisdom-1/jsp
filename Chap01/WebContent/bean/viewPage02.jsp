<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>viewPage02.jsp</title>
</head>
<body>
	
	<h3>Bean을 사용해 전달받은 학생 정보</h3>
	
	<b>jsp:useBean, jsp:setProperty, 
		EL을 활용하면 데이터 전달이 편해진다</b> <br>
	
	<h5>EL로 출력</h5>
	<!-- EL로 객체에 .찍고 필드명을 적으면 작성되어 있는 getter를 이용한다 -->
	${student } <br>
	${student.name } <br>
	${student.age } <br>
	${student.kor } <br>
	${student.eng } <br>
	${student.math } <br>
	${student.avg } <br>

</body>
</html>







