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
		out.print("<h3>���̵� ��ȸ���� ����</h3>");
	} else {	
		// ����� ����ڰ� �Ķ���ͷ� �������� ��й�ȣ�� ���� 
		if (answer.getUser_pass().equals(input.getUser_pass())) {
			// �α��� ����
			out.print("<h3>���̵�� ��й�ȣ ��ġ��. �α��� ����.</h3>");
		} else {
			// �α��� ����
			out.print("<h3>���̵�� ��ȸ�Ǿ����� ��й�ȣ�� Ʋ��.</h3>");
		}
	}

	if (conn != null) conn.close();
%>

