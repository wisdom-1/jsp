<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���ø����̼� ��ü�� �ʱ�ȭ �Ķ����</title>
</head>
<body>

	<h3>JSP�� ���ø����̼� ��ü</h3>
	
	<ul>
		<li>���� ����ǰ� �ִ� ������ ������ ���õ� ���尴ü</li>
		<li>������ ���� ���������� ���� ������ �� �ִ� ���尴ü</li>
		<li>���� Ÿ���� javax.servlet.ServletContext�̴�</li>
	</ul>

	<h3>�ʱ�ȭ �Ķ����</h3>
	
	<p>
		������ ����ɶ� ���� ���� ������ �� �ִ� �Ķ���� <br>
		������Ʈ�� �ʱ� �������� �����Ҷ� ���� �����ϴ� <br>
	</p>

<%	if (application.getInitParameter("debugMode").equals("true")) { %>
	
		<h1>����� ���� �������Դϴ�.</h1>
		
		<h3>���� ������ ������ �� ������Ʈ�� ContextPath = <%=application.getContextPath() %></h3>
		<h3>���� ������ ���� = <%=application.getServerInfo() %></h3>
		<h3>���� ���� ��ġ = <%=application.getRealPath("./") %></h3>		
	
		<%
			application.setAttribute("ABC", "TEST");			
		%>
	
		<h3>���ø����̼� ��ü�� ��Ʈ����Ʈ</h3>
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
		
		<h1>���� ���� �������Դϴ�.</h1>
		
<%	}  %>
</body>
</html>









