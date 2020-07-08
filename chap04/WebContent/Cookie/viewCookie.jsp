<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

	request.setCharacterEncoding("EUC-KR");
//cookieIndex.jsp => , makeCookie.jsp에서 쿠키를 생성 후 클라이언트(크롬)에 응답
// -> 응답을 받은 브라우저에 쿠키를 등록/ 브라우저가 리다이렉트를 수행 -> viewCookie.jsp

// 브라우저에 등록된 쿠키는 사용자가 요청을 보낼때마다 request에 함께 실려오게 된다.
Cookie[] cookies = request.getCookies();
%>
<!DOCTYPE html>

<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<ul>
<%
 if(cookies !=null && cookies.length > 0){
	 for(Cookie cookie : cookies){	%>
	 <li><b><%=cookie.getName() %></b>=<%=cookie.getValue() %></li>		 
<% 	 }
 }else{%>
 현재 쿠키가 없습니다.
<%}%>

</ul>
<br>
<a href="./cookieIndex.jsp">CookieEndex로 돌아가기</a>

</body>
</html>