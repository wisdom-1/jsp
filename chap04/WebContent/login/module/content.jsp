<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 
	jsp:include�� request�� �״�� ��������� ������ JSP�������̱� ������
	������ �����ڵ��� �ٽ� �����ؾ� �Ѵ�. 
 -->

<h3>���� �α��� �����̸� ������ ${cookie.login.value }�Դϴ�.</h3>

<c:choose>	
	<c:when test="${cookie.login.value eq 1 }">		
		<p>���� 1�� �������� ������ ����</p>		
	</c:when>
	<c:when test="${cookie.login.value eq 2 }">
		<p>���� 2�� �������� ������ ����</p>
	</c:when>
	<c:when test="${cookie.login.value eq 3 }">
		<p>���� 3�� �������� ������ ����</p>
	</c:when>
	<c:when test="${cookie.login.value eq 4 }">
		<p>���� 4�� �������� ������ ����</p>
	</c:when>
	<c:when test="${cookie.login.value eq 5 }">
		<p>���� 5�� �������� ������ ����</p>
	</c:when>
</c:choose>

			

<button onclick="location.href='./do/logout.jsp'">�α׾ƿ�</button>
	


