<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- 
	contentType�� ���ڵ� ����
	- JSP ���������� ������ HTML ������ charset(ĳ���ͼ�) ����
	- response�� ���� ���� charset
	
	
	
	pageEncoding�� ���ڵ� ����
	- JSP�ڵ尡 JAVA�ڵ�� ��ȯ�� �� ����� charset ����
	- ��, JAVA�ڵ��� charset�̴�.

 -->    
    
    
<!DOCTYPE html>
<html>
<head>


<!-- HTML�� ���ڵ� ����
	-���⿡ ����� ���ڵ� ������� �� �������� ������� ������ �ؼ��Ѵ�.
	- Ŭ���̾�Ʈ�� �� ������(ũ��)���� �� ������ �ؼ��� �� ����� ���ڵ� Ÿ���� ����
	- Ŭ���̾�Ʈ�� response�� ���� ������ charset	
 -->
 
 
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<h3>GET</h3>
<form action="./control.jsp" method ="GET">
	<input name ="test" value="ȫ�浿"><input type="submit">
</form>


<h3>POST</h3>
<form action="./control.jsp" method ="POST">
	<input name ="test" value="ȫ�浿"><input type="submit">
</form>



</body>
</html>