<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// 접속한 클라이언트가 사용하던 세션ID의 세션 인스턴스를 만료시킨다.
	session.invalidate();

	response.sendRedirect("../session.jsp");
%>