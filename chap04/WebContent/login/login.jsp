<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>

	<c:if test="${not empty status }">
		<script>
			alert('${status }');
		</script>
		<c:remove var="status" scope="session" />
	</c:if>

	<c:if test="${empty cookie.login }">
		<h3>로그인</h3>
		<form action="./Do/login.jsp" method="POST">
			<input name="user_id"> <br> <input type="password"
				name="user_pass"> <br> <input type="submit" value="로그인">
			<a href="#">비밀번호 찾기</a>
		</form>
	</c:if>

	<c:if test="${not empty cookie.login }">
<c:choose>
<c:when test="${cookie.login.value eq 1 }">
	<!-- include를 통해 다른 jsp페이지의 코드를 가져올 수 있다. -->
</c:when>
<c:when test="${cookie.login.value eq 2 }">
</c:when>
<c:when test="${cookie.login.value eq 3 }">
</c:when>
<c:when test="${cookie.login.value eq 4 }">
</c:when>
<c:when test="${cookie.login.value eq 5 }">
</c:when>
</c:choose>



		<h3>현재 로그인 상태이며 권한은 ${cookie.login.value }입니다.</h3>
		<button onclick="location.href='./Do/logout.jsp'">로그아웃</button>

	</c:if>

</body>
</html>






