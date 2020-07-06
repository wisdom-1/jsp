<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    
    <%
    //JSP 페이지는 HTML과 JAVA문법을 동시에 활용할 수 있지만, 
    //두가지를 혼용하면 코드가 복잡해지므로 두 부분으로 분할하여 사용한다.
    
    
    //1.  클라이언트의 요청을 받아 값을 꺼낸다. (처리, 비즈니스 로직)
    String w_color = request.getParameter("word-color");
    String bg_color = request.getParameter("bg-color");
    
    //보통 넘겨받은 값을 통해 여러가지 처리를 이곳에서 수행한다.
    // ex: 요청으로 날아온(사용자가 보낸) 아이디 /비밀번호 와 서버가 가지고 있는 아이디/비밀번호를 대조한다.
    // ex: 요청으로 날아온 검색어가 날아왔을 때, 해당 검색어와 일치하는 내용을 검색 (-> 출력은 밑에서)
    
    //-----------------------------------------------------------------------------
    
    
    %>
     <!--  2. 값을 활용해 페이지를 생성한다. (화면처리, View) -->
  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
body{
background-color : <%= bg_color%>;
color : <%=w_color%>;
}
</style>



<title>controller01.jsp</title>
</head>
<body>
	<h1> 한 페이지에서 처리도 하고 뷰도 생성한 원시적인 controller01 </h1>


	전달받은 글씨 색 : <%= w_color %><br>
	전달받은 배경 색 : <%= bg_color %><br>



</body>
</html>