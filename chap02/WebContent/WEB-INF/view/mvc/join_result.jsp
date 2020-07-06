<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>가입 결과 페이지</title>
</head>
<body>

<c:choose>
<c:when test="${result eq 'exist }">
<h1>이미 존재하는 회원이라 등록하지 못했습니다.</h1>
</c:when>
<c:when test="${result eq 'success }">
<h1>새로운 회원 정보를 </h1>
</c:when>
</c:choose>




</body>
</html>