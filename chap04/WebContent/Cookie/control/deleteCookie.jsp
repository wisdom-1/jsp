<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
//noMoreToday ��Ű �����غ���
Cookie[] cookies = request.getCookies();

if (cookies !=null && cookies.length > 0){
	
	for (Cookie cookie : cookies){
		String name = cookie.getName();
		String value = cookie.getValue();
		
		if (name.equals("noMoreToday")){
			// ��Ű�� ������ ���� ���� �̸�/����� ��Ű�� ����ð��� 0���� �����ؾ� �Ѵ�.
			Cookie modi = new Cookie("noMoreToday", "False");
			modi.setMaxAge(0);	//����
			modi.setPath("/");
			response.addCookie(modi); //modi ���
			break;	//if�� ����������
		}
	}
}


response.sendRedirect("../viewCookie.jsp");


%>