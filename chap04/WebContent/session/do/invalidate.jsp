<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// ������ Ŭ���̾�Ʈ�� ����ϴ� ����ID�� ���� �ν��Ͻ��� �����Ų��.
	session.invalidate();

	response.sendRedirect("../session.jsp");
%>