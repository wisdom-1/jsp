<%@ page import="java.util.Map" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//form 태그로 전송한 데이터를 이곳에서 받는다.
	
	// input 태그의 name 설정한 값이 key가 된다. (key로 데이터를 꺼내온다.)
	
	//String name = request.getParameter("m_name");
	//String age = request.getParameter("m_age");
	//String email = request.getParameter("m_email");	// 반복문 만들기 위해 3줄 주석처리함.
	
	
	//request.getParameterMap() : 전송된 모든 파라미터를 Map 타입으로 가져온다.
	Map<String, String[]> paraMap =request.getParameterMap();
	
	
	
%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JoinProcess.jsp</title>
</head>
<body>




	<h1> join.html로부터 전송된 파라미터들</h1>

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


	<%-- 이름 : <%= name %><br>--%>
	<%--나이 : <%=age %><br>--%>
	<%--이메일 : <%=email %><br>--%>

</body>
</html>