<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!-- JSTL 커스텀 태그 라이브러리, JAVA 문법을 간결하게 태그처럼 이용할 수 있도록 모양을 바꿔준다. -->

<h3> JSTL 을 이용해 구구단 출력하기</h3>

<!-- c:forEach : 반복문  

1. begin 부터 end까지 index를 이용해 반복하는 사용법
2. items에 iterable한 객체(배열, ArrayLisdt, HashSet..)를 등록해 반복하는 사용법

-->
<!-- c:choose, c: when, c:otherwise : if, else if, else 문  

1. c:choose -> 조건문 전체를 가리킴
2. c:when  -> if문 혹은 else if문의 역할을 한다. test 속성에 조건문을 넣는다.
3.  c:otherwise	: else문의 역할을 한다.			    					

-->

<!--조건을 비교할 떄 사용하는 연산자 : jstl의 비교 연산자 : 
						>, <, >=, <=, ==,empty, not eq, not empty 
				    산술 연산자 : +, -, *, / , %, mod
						
						
						 -->

<table border ="1">
<c: forEach var ="gop" begin ="0" end="9"> 
	<tr>
	<c: forEach var = "dan" begin= "2" end= "9">
	<c:choose>
	<c:when test="${gop == 0 }">
		<th>${dan}단</th>
	</c:when>
	<c:otherwise>
	<td>${gop }X${dan }=${dan*gop }</td>
	</c:otherwise>
</c:choose>
	
	</c: forEach>
	</tr>
	
	</c: forEach>

</table>

</body>
</html>