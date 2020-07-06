<%@ page import="java.util.ArrayList, chap01.tuto.Apple" %>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>


    <%
    ArrayList<Apple> apples = new ArrayList<>();
    
    for (int i =0; i<10; ++i)
    	apples.add(new Apple());
    
    request.setAttribute("apples", apples);

    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Apples.jsp</title>
<style>
/* table �� ��Ÿ�� �ֱ� */

table{
width: 500px;
}
/* ��� tr �±��� ¦����° �����ؼ� ��Ÿ���� ���� */
tr :nth-child(even) {
	/* google ����-> color picker�� �̿��� ���� ������ �� �ִ�... */
	
	background-color: #ffbbb5;
	color: white;
	
}

tr:nth-child(odd) {
	background-color: rgb(177,250,162);
	color: black;
}

ul {
	list-style-type: none;
}
ul > li {
	display: inline-block;
	width: 80px;
}

</style>


</head>
<body>

<table border="1">
<tr>
<th> ��� ����</th>
</tr>

<c:forEach var ="apple" items="${apples }">
<tr>
	<td>${apple } </td>
</tr>
</c:forEach>
</table>



</body>
</html>