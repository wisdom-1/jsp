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
/* table 에 스타일 넣기 */

table{
width: 500px;
}
/* 모든 tr 태그중 짝수번째 선택해서 스타일을 적용 */
tr :nth-child(even) {
	/* google 에서-> color picker를 이용해 색을 선택할 수 있다... */
	
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
<th> 사과 정보</th>
</tr>

<c:forEach var ="apple" items="${apples }">
<tr>
	<td>${apple } </td>
</tr>
</c:forEach>
</table>



</body>
</html>