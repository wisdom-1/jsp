<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
// ����ڿ��� ���޹��� ��û�� �ؼ��� �� ����� charset�� �����Ѵ�.
	request.setCharacterEncoding("EUC-KR");


//	request�� ��û�� �ؼ��ϴ� ����� �����ص� GET��� ��û�� ������ �ѱ��� ������.

// GET ����� �ּҰ�(URI)�� �Ƿ��� �����ϰ� �Ǵµ�
// URI�� ���ڵ� ����� Apache/Tomcat���� �����ϱ� �����̴�.
// Apache/Tomcat��  ������ �⺻���� UTF-8 �̴�.


//    <Connector ��¼�� ��¼�� 8080��¼�� ��¼��  URIEncoding="EUC-KR"   />�� �߰��ϸ�
// 		URI�� EUC-KR ������� �ؼ��ϰ� �ȴ�.
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>control</title>
</head>

<body>

TEST:
${param.test };

</body>
</html>