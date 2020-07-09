<%@ page import="chap04.jdbc.JdbcConnector, java.sql.Connection,
	chap04.dao.*, chap04.dto.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean class="chap04.dto.Login" id="input"/>
<jsp:setProperty name="input" property="*"/>
<%
	// do���丮 ���� ���ϵ��� ó���ϰ� redirect�� ����	
	Connection conn = JdbcConnector.getConnection();
	
	// ����ڰ� �Ķ���ͷ� ������ ���̵�� DB���� ������ ������
	Login answer = LoginDAO.read(conn, input.getUser_id());
	
	if (answer == null) {
		// ���̵� ��ȸ���� ����
		// out.print("<h3>���̵� ��ȸ���� ����</h3>");
		session.setAttribute("status", "���̵� Ȥ�� ��й�ȣ�� �ùٸ��� �ʽ��ϴ�.");		
	} else {	
		// ����� ����ڰ� �Ķ���ͷ� �������� ��й�ȣ�� ���� 
		if (answer.getUser_pass().equals(input.getUser_pass())) {
			// �α��� ����
			// out.print("<h3>���̵�� ��й�ȣ ��ġ��. �α��� ����.</h3>");
			Cookie loginCookie = new Cookie("login", Integer.toString(answer.getUser_per()));
			loginCookie.setMaxAge(-1);
			loginCookie.setPath("/");
			
			response.addCookie(loginCookie);
		} else {
			// �α��� ����
			// out.print("<h3>���̵�� ��ȸ�Ǿ����� ��й�ȣ�� Ʋ��.</h3>");
			session.setAttribute("status", "���̵� Ȥ�� ��й�ȣ�� �ùٸ��� �ʽ��ϴ�.");	
		}
	}

	if (conn != null) conn.close();
	
	response.sendRedirect("../login.jsp");
%>






