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

<h3> �л� ����</h3>
<p>
getter/setter�� ������ �ڹ� ��ü�� EL�� ���� ���ϰ� �̿��� �� �ִ�.
</p>

<c:forEach var="Student" items="${Students }">
<table class ="center" border ="2">

<tr>
	<th width="100"> �̸�</th>
	<th width="300" colspan="2"> ${Student.name }</th>
</tr>

<tr>
	<th width="33.33%"> ����</th>
	<th width="33.33%"> ����</th>
	<th width="33.33%"> ����</th>
</tr>

<tr>
	<td>${Student.kor }��</td>	
	<td>${Student.eng }��</td>	
	<td>${Student.math }��</td>	
</tr>
<tr>
	<th colspan="3"> �������</th>
</tr>	
<tr>
	<td colspan="3"> ${Student.avg}��</td>
</tr>	

<tr>
	<th height="100" width="30">���</th>
	<td colspan="2"></td>
</tr>

	
</table>
<hr>
</c:forEach>


</body>
</html>