<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
//noMoreToday 쿠키 삭제해보기
Cookie[] cookies = request.getCookies();

if (cookies !=null && cookies.length > 0){
	
	for (Cookie cookie : cookies){
		String name = cookie.getName();
		String value = cookie.getValue();
		
		if (name.equals("noMoreToday")){
			// 쿠키를 삭제할 때는 같은 이름/경로의 쿠키의 만료시간을 0으로 변경해야 한다.
			Cookie modi = new Cookie("noMoreToday", "False");
			modi.setMaxAge(0);	//삭제
			modi.setPath("/");
			response.addCookie(modi); //modi 등록
			break;	//if문 빠져나가기
		}
	}
}


response.sendRedirect("../viewCookie.jsp");


%>