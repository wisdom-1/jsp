
<%@ page import = "chap01.util.Shortcuts" %>  <%-- JSP�� import�� --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>




<%-- �ּ� --%>
<%-- <% %>  : ��� �ڹ� �ڵ� ��� ���� ���� --%>
<%-- <%! %> : �Լ� ���� ���� --%>
<%-- <%= %> : ������ ��� ���� HTML �ڵ忡 ��� --%>
<%-- <%@ %> : ������ ����, JSP�� ������ ���� --%>


<%!
   private int add(int A, int B) {
   	return A+B;
   }
%>


<!--  HTML ���� : �������� ����� ����Ѵ�. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>

/* 
	CSS (StyleSheet )����
		-�������� �������� ����Ѵ�.
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
	Servlet : �ڹ� �ڵ带 ����ϱ� ���� => JAVA �� �������� ó���� �ϴ� �뵵�� �����.<br>
	JSP Page : HTML �ڵ带 ����ϱ� ���� => ����ڿ��� ������ ȭ���� ����� �뵵�� �����.<br>

<ol>
<%-- JSP ������ <% %> ���ο� �ڹ� �ڵ带 �ۼ��Ѵ�.(��ũ��Ʈ�� scriptlet) --%>
<%for (int i = 0; i<10; ++i) {%>
	<li style ="color: dodgerblue;"> �ݺ��Ǵ� ����<%=add(i,999) %></li>	

<%} %>

</ol>
<div id= "time"> ���� �ð� <%=Shortcuts.getCurrentTime("yyyy-MM-dd /HH:mm:ss") %> </div>

<img src="https://mblogthumb-phinf.pstatic.net/20151215_146/rlatnals8712_1450141030738pC6eR_PNG/20151215_094901.png?type=w2">

for (int i =0;i<100;++i){ %>
<div> div�� �־���� �������� �����</div>

</body>
</html>