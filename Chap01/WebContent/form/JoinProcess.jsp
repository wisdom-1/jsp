<%@ page import="java.util.Map" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//form �±׷� ������ �����͸� �̰����� �޴´�.
	
	// input �±��� name ������ ���� key�� �ȴ�. (key�� �����͸� �����´�.)
	
	//String name = request.getParameter("m_name");
	//String age = request.getParameter("m_age");
	//String email = request.getParameter("m_email");	// �ݺ��� ����� ���� 3�� �ּ�ó����.
	
	
	//request.getParameterMap() : ���۵� ��� �Ķ���͸� Map Ÿ������ �����´�.
	Map<String, String[]> paraMap =request.getParameterMap();
	
	
	
%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JoinProcess.jsp</title>
</head>
<body>




	<h1> join.html�κ��� ���۵� �Ķ���͵�</h1>

<%

	for (String key : paraMap.keySet()){ 
		String[] values = paraMap.get(key);
		
		out.print(key + " : ");
		for (String value : values){
			out.print(value);
		}
		out.print("<br>");
	}
%>


	<%-- �̸� : <%= name %><br>--%>
	<%--���� : <%=age %><br>--%>
	<%--�̸��� : <%=email %><br>--%>

</body>
</html>