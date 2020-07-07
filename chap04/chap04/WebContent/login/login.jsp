<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 페이지</title>
</head>
<body>

<h3>로그인</h3>
<form action="do/login.jsp" method="POST">
	<input name="user_id"> <br>
	<input type="password" name="user_pass"> <br>
	<input type="submit" value="로그인"> <a href="#">비밀번호 찾기</a>
</form>

</body>
</html>