
<%@ page import = "chap01.util.Shortcuts" %>  <%-- JSP의 import문 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>




<%-- 주석 --%>
<%-- <% %>  : 모든 자바 코드 사용 가능 영역 --%>
<%-- <%! %> : 함수 선언 영역 --%>
<%-- <%= %> : 변수에 담긴 값을 HTML 코드에 출력 --%>
<%-- <%@ %> : 페이지 설정, JSP의 문법을 따름 --%>


<%!
   private int add(int A, int B) {
   	return A+B;
   }
%>


<!--  HTML 영역 : 페이지의 골격을 담당한다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>

/* 
	CSS (StyleSheet )영역
		-페이지의 디자인을 담당한다.
		*/
#time {
	font-size: 1.5em;
}

#bg-img {
	position: fixed;
	z-index: -1;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}
</style>
</head>


<body>

<h1 style = "color : yellowgreen;">Hello JSP PAGE!!!</h1>

<p>
	Servlet : 자바 코드를 사용하기 편함 => JAVA 로 여러가지 처리를 하는 용도로 사용함.<br>
	JSP Page : HTML 코드를 사요하기 편함 => 사용자에게 보여줄 화면을 만드는 용도로 사용함.<br>

<ol>
<%-- JSP 에서는 <% %> 내부에 자바 코드를 작성한다.(스크립트릿 scriptlet) --%>
<%for (int i = 0; i<10; ++i) {%>
	<li style ="color: dodgerblue;"> 반복되는 내용<%=add(i,999) %></li>	

<%} %>

</ol>
<div id= "time"> 현재 시간 <%=Shortcuts.getCurrentTime("yyyy-MM-dd /HH:mm:ss") %> </div>

<img src="https://mblogthumb-phinf.pstatic.net/20151215_146/rlatnals8712_1450141030738pC6eR_PNG/20151215_094901.png?type=w2">

for (int i =0;i<100;++i){ %>
<div> div에 넣어놓은 쓸데없는 내용들</div>

</body>
</html>