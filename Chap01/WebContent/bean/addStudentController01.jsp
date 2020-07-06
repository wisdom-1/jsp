<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>




<%
//form.jsp에서 전송된 데이터들을 밑에 html에 출력해보세요.
// 1. request.getParameter()로 받은 후 Attribute에 등록
String name = request.getParameter("name");
String age = request.getParameter("age");
String kor = request.getParameter("kor");
String eng = request.getParameter("eng");
String math = request.getParameter("math");


// 다른 페이지에서도 값을 볼 수 있도록 Attribute에 등록한다.
request.setAttribute("name",name);
request.setAttribute("age", age);
request.setAttribute("kor",kor);
request.setAttribute("eng",eng);
request.setAttribute("math",math);

// 2. 다른 view 페이지로 forward한 후 출력하기
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


<h3> form.jsp 내용을 이곳에 전송</h3>

<form action="form.jsp" method="get">출력완료</form>






</body>
</html>