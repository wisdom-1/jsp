<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");

	// cookieIndex.jsp -> makeCookie.jsp���� ��Ű�� ���� �� Ŭ���̾�Ʈ(ũ��)���� ����
	//	-> ������ ���� �������� ��Ű�� ��� / �������� �����̷�Ʈ�� ���� -> viewCookie.jsp
	
	// �������� ��ϵ� ���� ����ڰ� ��û�� ���� ������ request��ü�� �Բ� �Ƿ����� �ȴ�
	Cookie[] cookies = request.getCookies();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ViewCookie.jsp</title>
</head>
<body>

<ul>
<%	if (cookies != null && cookies.length > 0) {
		
		for (Cookie cookie : cookies) { %>
	
	<li><b><%=cookie.getName() %></b>=<%=cookie.getValue() %></li>		
			
<%		}
		
	} else { %>
	<li>���� ��Ű�� �����ϴ�.</li>
<%	} %>
</ul>
<br>
<a href="./cookieIndex.jsp">CookieIndex�� ���ư���..</a> <br>

</body>
</html>





