<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
    
       <%
    //JSP 페이지는 HTML과 JAVA문법을 동시에 활용할 수 있지만, 
    //두가지를 혼용하면 코드가 복잡해지므로 두 부분으로 분할하여 사용한다.
    
    
    //1.  클라이언트의 요청을 받아 값을 꺼낸다. (처리, 비즈니스 로직)
    String w_color = request.getParameter("word-color");
    String bg_color = request.getParameter("bg-color");
    
   //처리가 끝난 후 forward 할 페이지에 전달하고 싶은 데이터를 Attribute에 등록한다.
   
   //Attribute란? 몇 가지 내장 객체에 데이터를  Key:Value 형태로 실어놓을 수 있는 것.
   
	// Attribute 를 등록할 수 있는 객체 : application > session > request > pageContext
											// (수명이 긴 순서대로 나열한다.) 
		   request.setAttribute("w_color",w_color);
		   request.setAttribute("bg_color",bg_color);
    //보통 넘겨받은 값을 통해 여러가지 처리를 이곳에 수행
    // ex: 요청으로 날라온 아이디/비번 와 서버가 가지고 있는 아이디/비번 대조
    // ex: 요청으로 날아온 검색어 해당검색어와 일치하는 내용을 검색.

    //--------------------------------------------

   /* 
    Java로 forward 하기 (Servlet에서 사용 가능)
    RequestDispatcher dispatcher = request.getRespatcher("view/color.jsp");
    dispatcher.forward(request, response);
    */
   %>
    
    <!--  JSP로 forward 하기 -->
    <jsp:forward page="view/color.jsp">
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>