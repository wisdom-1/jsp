<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ��� ������</title>
</head>
<body>

<c:choose>
<c:when test="${result eq 'exist }">
<h1>�̹� �����ϴ� ȸ���̶� ������� ���߽��ϴ�.</h1>
</c:when>
<c:when test="${result eq 'success }">
<h1>���ο� ȸ�� ������ </h1>
</c:when>
</c:choose>




</body>
</html>