<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoddanng="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<tdantle>구구단01</tdantle>
</head>
<body>

<h1> 반복문이용 , 구구단 출력하기</h1>

<table border ="1">


<%

 for(int dan=2;dan<10;dan++)
 {%>
  <td >[<%=dan%>단]</td> <%}%>

<%
 for(int dan=1 ; dan<10 ; dan++)
 {%>
  <tr>
  <%for(int j=2; j<10;j++)
  {%>
  <td><%=j%>X<%=dan%>=<%=dan*j%></td>
 <%} %>
 </tr>
<%} %>
</table>




</body>
</html>




