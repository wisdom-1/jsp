<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 
	jsp:include는 request는 그대로 사용하지만 별도의 JSP페이지이기 때문에
	페이지 지시자들은 다시 정의해야 한다. 
 -->

<h3>현재 로그인 상태이며 권한은 ${cookie.login.value }입니다.</h3>

<c:choose>	
	<c:when test="${cookie.login.value eq 1 }">		
		<p>권한 1인 유저에게 보여줄 내용</p>		
	</c:when>
	<c:when test="${cookie.login.value eq 2 }">
		<p>권한 2인 유저에게 보여줄 내용</p>
	</c:when>
	<c:when test="${cookie.login.value eq 3 }">
		<p>권한 3인 유저에게 보여줄 내용</p>
	</c:when>
	<c:when test="${cookie.login.value eq 4 }">
		<p>권한 4인 유저에게 보여줄 내용</p>
	</c:when>
	<c:when test="${cookie.login.value eq 5 }">
		<p>권한 5인 유저에게 보여줄 내용</p>
	</c:when>
</c:choose>

			

<button onclick="location.href='./do/logout.jsp'">로그아웃</button>
	


