<%@ page import="java.util.HashMap" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	HashMap<String, String> cookieMap = new HashMap<>();
	Cookie[] cookies = request.getCookies();
	
	if (cookies != null && cookies.length > 0) {
		for (Cookie cookie : cookies) {
			cookieMap.put(cookie.getName(), cookie.getValue());			
		}		
	}	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>세션 객체</title>
</head>
<body>

<h3>세션 객체</h3>

<ul>
	<li>클라이언트가 서버에 접속하면 서버는 클라이언트에게 SESSION ID를 부여한다 (쿠키를 사용)</li>
	<li>서버는 클라이언트로부터 받은 쿠키에 세션ID가 있다면 그 ID에 해당하는 세션 인스턴스를 사용한다</li>
	<li>각각의 클라이언트는 IP주소와 브라우저로 구분한다</li>
	<li>세션ID를 담고있는 쿠키는 만료기간이 -1이다.(브라우저 종료시 삭제되는 쿠키)</li>
	<li>세션에 너무 많은 내용을 담으면 서버에 부담이된다.</li>
</ul>

<h3>세션 객체로 확인할 수 있는 정보들</h3>

<p>
	세션ID : <%=session.getId() %> <br>
	쿠키에 있는 세션ID : <%=cookieMap.get("JSESSIONID") %> <br>
	세션이 만들어진 시간 : <%=session.getCreationTime() %> <br>
	최근 접속 시간 : <%=session.getLastAccessedTime() %> <br>
	<% session.setMaxInactiveInterval(5 * 60); // 초 단위  %>
	최대 비활성화 시간 : <%=session.getMaxInactiveInterval() %> <br>
</p>
<br>
<a href="./do/invalidate.jsp">세션 만료시키기</a> <br>

</body>
</html>




