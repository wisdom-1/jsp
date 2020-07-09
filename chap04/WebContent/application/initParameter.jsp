<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>어플리케이션 객체의 초기화 파라미터</title>
</head>
<body>

	<h3>JSP의 어플리케이션 객체</h3>
	
	<ul>
		<li>현재 실행되고 있는 서버의 정보와 관련된 내장객체</li>
		<li>서버의 여러 설정파일을 통해 설정할 수 있는 내장객체</li>
		<li>실제 타입은 javax.servlet.ServletContext이다</li>
	</ul>

	<h3>초기화 파라미터</h3>
	
	<p>
		서버가 실행될때 가장 먼저 정의할 수 있는 파라미터 <br>
		프로젝트의 초기 설정값을 지정할때 아주 유용하다 <br>
	</p>

<%	if (application.getInitParameter("debugMode").equals("true")) { %>
	
		<h1>디버그 모드로 실행중입니다.</h1>
		
		<h3>현재 서버에 설정된 이 프로젝트의 ContextPath = <%=application.getContextPath() %></h3>
		<h3>현재 서버의 버전 = <%=application.getServerInfo() %></h3>
		<h3>실제 파일 위치 = <%=application.getRealPath("./") %></h3>		
	
		<%
			application.setAttribute("ABC", "TEST");			
		%>
	
		<h3>어플리케이션 객체의 어트리뷰트</h3>
		<%
			java.util.Enumeration<String> attNames 
						= application.getAttributeNames();
		
			while (attNames.hasMoreElements()) {
				String key = attNames.nextElement();
				Object value = application.getAttribute(key);
				
				out.print(String.format("<p><b>%s</b>=%s</p>", key, value));				
			}				
		%>
		
	
<%	} else { %>
		
		<h1>서비스 모드로 실행중입니다.</h1>
		
<%	}  %>
</body>
</html>









