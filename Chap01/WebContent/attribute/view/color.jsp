<%@ page import="chap01.tuto.Apple"  %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    
    
    <%
    
    // controller02.jsp로 갔던 요청이 forward를 통해 그대로 color.jsp에 도착한다.
    // 이 때 controller02.jsp에서 등록한 Attribute 도 함께 도착하게 된다.
    
    
    //Attribute 에 실려온 데이터를 꺼내는 방법
    
    //방법 1. request.getAttribute(Key)
    //	-Attribute를 등록할 떄 사용했던 Key값으로 Value 를 꺼낼 수 있다.
    // - Object 타입으로 꺼내지므로 다운캐스팅이 필요하다.
    // 찾는 Key가 없을 땐 null이 반환되므로 주의해야 한다.
    
    //방법 2. EL을 이용한다.(Expression Language)
    //	-JSP 영역에서 ${AttName} 으로 간편하게 사용한다.
    //  - Attribute 에 등록 할 때 사용했던 Key 값을 바로 사용할 수 있어서 매우 편하다.
	// 실제로는 Key를 통해 꺼낸 value 객체의 toString() 을 이용한다.
    
    
    String w_color = (String) request.getAttribute("w");
    String bg_color = (String) request.getAttribute("bg");
    
    
    request.setAttribute("apple",new chap01.tuto.Apple()); //이거 쓰기 싫으면 import
    request.setAttribute("apple",new Apple() ); //이거 쓰기 싫으면 import
    
    
    %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>color.jsp</title>

<style>
body{
	background-color : <%= bg_color%>;
	color: <%= w_color%>
}
</style>

</head>
<body>
	<h1>controller02로 도착한 color.jsp</h1>
	<%-- 
		<%= %> : 는 사용자에게 출력하는 것이 아니라  위가 응답할 HTML 문자열에 추가하는 것이다.
	 --%>
	

	전달받은 글씨 색 : <%=  "w_color"%><br>
	전달받은 배경 색 : <%=  "bg_color"%><br>
	
	<h3> EL로 출력해보기 </h3>
	전달받은 글씨 색 : ${w_color}<br>
	전달받은 배경 색 : ${bg_color}<br>
	여기서 추가한 사과 : ${apple }<br>
	
   


</body>
</html>














