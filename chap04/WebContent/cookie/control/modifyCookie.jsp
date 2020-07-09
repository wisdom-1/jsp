<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Cookie[] cookies = request.getCookies();

	if (cookies != null && cookies.length > 0) {
		
		for (Cookie cookie : cookies) {
			String name = cookie.getName();
			String value = cookie.getValue();
			
			if (name.equals("userAge")) {
				// 쿠키를 수정할때는 같은 이름/경로의 쿠키를 덮어써야 한다
				Cookie modi = new Cookie("userAge", "25");
				modi.setMaxAge(-1);
				modi.setPath("/chap04/cookie");
				
				// Path를 잘못 설정하면 수정되는것이 아니라 똑같은 이름의 쿠키가 하나 더 등록될 수 있다.
				// modi.setPath("/chap04");
				response.addCookie(modi);				
				break;
			}
		}
		
	}

	response.sendRedirect("../viewCookie.jsp");
%>