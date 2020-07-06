<%@ page import="java.util.HashSet, chap01.beans.Student" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%
	HashSet<Student> Students = new HashSet<>();

	for (int i =0; i <10; ++i)
		Students.add(new Student());
	
	request.setAttribute("Students", Students);
%>    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Students.jsp</title>
<style>

.center {
	text-align: center;
}
</style>

</head>
<body>

<h3> 학생 정보</h3>
<p>
getter/setter가 설정된 자바 객체는 EL로 아주 편하게 이용할 수 있다.
</p>

<c:forEach var="Student" items="${Students }">
<table class ="center" border ="2">

<tr>
	<th width="100"> 이름</th>
	<th width="300" colspan="2"> ${Student.name }</th>
</tr>

<tr>
	<th width="33.33%"> 국어</th>
	<th width="33.33%"> 영어</th>
	<th width="33.33%"> 수학</th>
</tr>

<tr>
	<td>${Student.kor }점</td>	
	<td>${Student.eng }점</td>	
	<td>${Student.math }점</td>	
</tr>
<tr>
	<th colspan="3"> 평균점수</th>
</tr>	
<tr>
	<td colspan="3"> ${Student.avg}점</td>
</tr>	

<tr>
	<th height="100" width="30">비고</th>
	<td colspan="2"></td>
</tr>

	
</table>
<hr>
</c:forEach>


</body>
</html>