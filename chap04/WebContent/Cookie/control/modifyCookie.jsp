<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

Cookie[] cookies = request.getCookies();

if (cookies !=null && cookies.length > 0){
	
	for (Cookie cookie : cookies){
		String name = cookie.getName();
		String value = cookie.getValue();
		
		if (name.equals("userAge")){
			// ��Ű�� ������ ���� ���� �̸�/����� ��Ű�� ������ �Ѵ�.
			Cookie modi = new Cookie("userAge", "25");
			modi.setMaxAge(-1);
			modi.setPath("/chap04/cookie");
			
		//	modi.setPath("/chap04");  ��� ������ �ٸ��� �ϸ� ��Ű����..��ٰ�?
			//Path�� �߸� �����ϸ� �����Ǵ°��� �ƴ϶� �Ȱ��� �̸��� ��Ű�� �ϳ� �� ��ϵ� �� �ִ�.
				
			response.addCookie(modi); //modi ���
			
			break;
		}
	}
}


response.sendRedirect("../viewCookie.jsp");


%>