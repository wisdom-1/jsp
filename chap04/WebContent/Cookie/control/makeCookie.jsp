<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

Cookie cookie01 = new Cookie("userName","ȫ�浿");
Cookie cookie02 = new Cookie("userAge","20");
Cookie cookie03 = new Cookie("noMoreToday", "True");

//path�� �����ϸ� cookie�� ������ ������ �� �ִ�.
cookie01.setPath("/chap04/cookie");
cookie02.setPath("/chap04/cookie");
cookie03.setPath("/");

// ��Ű�� ������ �����ϸ� ��Ű�� ����ð��� ������ �� �ִ�.
cookie01.setMaxAge(5); // ��Ű ���� 5��
cookie02.setMaxAge(-1); // ��Ű ���� -1 (�⺻��) : ������ ����� ����ȴ�.
cookie03.setMaxAge(60 * 60 * 24); // ��Ű ���� 24�ð�

response.setCharacterEncoding("EUC-KR");

response.addCookie(cookie01);
response.addCookie(cookie02);

response.sendRedirect("../viewCookie.jsp");
// response.sendRedirect("../cookieIndex.jsp");
%>