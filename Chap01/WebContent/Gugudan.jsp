<%@ page import = "chap01.util.Shortcuts" %>  <%-- JSP�� import�� --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<ol>


<%-- jsp ���ο����� �Լ��� ���� �ʿ䰡 ��...��? �״��! import�� �������. ����! �ּ��� ����� �ٸ�..    --%>

<%= Shortcuts.getHtmlGugudan() %>    <%-- JSP ������ <% %> ���ο� �ڹ� �ڵ带 �ۼ��Ѵ�.(��ũ��Ʈ�� ) --%>

</ol>

</body>
</html>