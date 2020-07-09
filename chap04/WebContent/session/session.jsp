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
<title>���� ��ü</title>
</head>
<body>

<h3>���� ��ü</h3>

<ul>
	<li>Ŭ���̾�Ʈ�� ������ �����ϸ� ������ Ŭ���̾�Ʈ���� SESSION ID�� �ο��Ѵ� (��Ű�� ���)</li>
	<li>������ Ŭ���̾�Ʈ�κ��� ���� ��Ű�� ����ID�� �ִٸ� �� ID�� �ش��ϴ� ���� �ν��Ͻ��� ����Ѵ�</li>
	<li>������ Ŭ���̾�Ʈ�� IP�ּҿ� �������� �����Ѵ�</li>
	<li>����ID�� ����ִ� ��Ű�� ����Ⱓ�� -1�̴�.(������ ����� �����Ǵ� ��Ű)</li>
	<li>���ǿ� �ʹ� ���� ������ ������ ������ �δ��̵ȴ�.</li>
</ul>

<h3>���� ��ü�� Ȯ���� �� �ִ� ������</h3>

<p>
	����ID : <%=session.getId() %> <br>
	��Ű�� �ִ� ����ID : <%=cookieMap.get("JSESSIONID") %> <br>
	������ ������� �ð� : <%=session.getCreationTime() %> <br>
	�ֱ� ���� �ð� : <%=session.getLastAccessedTime() %> <br>
	<% session.setMaxInactiveInterval(5 * 60); // �� ����  %>
	�ִ� ��Ȱ��ȭ �ð� : <%=session.getMaxInactiveInterval() %> <br>
</p>
<br>
<a href="./do/invalidate.jsp">���� �����Ű��</a> <br>

</body>
</html>




