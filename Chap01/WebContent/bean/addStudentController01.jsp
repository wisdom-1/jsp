<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>




<%
//form.jsp���� ���۵� �����͵��� �ؿ� html�� ����غ�����.
// 1. request.getParameter()�� ���� �� Attribute�� ���
String name = request.getParameter("name");
String age = request.getParameter("age");
String kor = request.getParameter("kor");
String eng = request.getParameter("eng");
String math = request.getParameter("math");


// �ٸ� ������������ ���� �� �� �ֵ��� Attribute�� ����Ѵ�.
request.setAttribute("name",name);
request.setAttribute("age", age);
request.setAttribute("kor",kor);
request.setAttribute("eng",eng);
request.setAttribute("math",math);

// 2. �ٸ� view �������� forward�� �� ����ϱ�
System.out.println(name);
request.getRequestDispatcher("./viewPage01.jsp").forward(request, response);



%>    




<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR" >
<title> addStudentController01.jsp </title>
</head>
<body>


<h3> form.jsp ������ �̰��� ����</h3>

<form action="form.jsp" method="get">��¿Ϸ�</form>






</body>
</html>