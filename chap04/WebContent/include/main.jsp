<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <% request.setCharacterEncoding("EUC-KR");
    %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>main.jsp</title>
</head>
<body>

<h3> MAIN ������</h3>
<p>include�� forward�� ���������� include�Ϸ��� jsp �������� request�� �����Ѵ�.<br>
	request ��ü�� ���޹��� �ش� jsp �������� ó������� ���� �������� ���Խ�Ų��. 
</p>
<jsp:include page="./sub01.jsp"/>
<jsp:include page="./sub02.jsp">
<jsp:param value="ȫ�浿" name="name"/>
</jsp:include>

</body>
</html>