<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

Cookie[] cookies = request.getCookies();

if (cookies !=null && cookies.length > 0){
	
	for (Cookie cookie : cookies){
		String name = cookie.getName();
		String value = cookie.getValue();
		
		if (name.equals("userAge")){
			// 쿠키를 수정할 때는 같은 이름/경로의 쿠키를 덮어써야 한다.
			Cookie modi = new Cookie("userAge", "25");
			modi.setMaxAge(-1);
			modi.setPath("/chap04/cookie");
			
		//	modi.setPath("/chap04");  경로 설정을 다르게 하면 쿠키값이..어떻다고?
			//Path를 잘못 설정하면 수정되는것이 아니라 똑같은 이름의 쿠키가 하나 더 등록될 수 있다.
				
			response.addCookie(modi); //modi 등록
			
			break;
		}
	}
}


response.sendRedirect("../viewCookie.jsp");


%>