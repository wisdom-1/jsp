<%@ page import = "chap01.util.Shortcuts" %>  <%-- JSP의 import문 --%>
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


<%-- jsp 내부에서는 함수를 만들 필요가 없...네? 그대신! import를 해줘야함. 아하! 주석도 방법이 다름..    --%>

<%= Shortcuts.getHtmlGugudan() %>    <%-- JSP 에서는 <% %> 내부에 자바 코드를 작성한다.(스크립트릿 ) --%>

</ol>

</body>
</html>