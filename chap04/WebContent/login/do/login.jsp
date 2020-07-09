<%@ page import="chap04.jdbc.JdbcConnector, java.sql.Connection,
	chap04.dao.*, chap04.dto.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean class="chap04.dto.Login" id="input"/>
<jsp:setProperty name="input" property="*"/>
<%
	// do디렉토리 밑의 파일들은 처리하고 redirect할 예정	
	Connection conn = JdbcConnector.getConnection();
	
	// 사용자가 파라미터로 전송한 아이디로 DB에서 정답을 가져옴
	Login answer = LoginDAO.read(conn, input.getUser_id());
	
	if (answer == null) {
		// 아이디가 조회되지 않음
		// out.print("<h3>아이디가 조회되지 않음</h3>");
		session.setAttribute("status", "아이디 혹은 비밀번호가 올바르지 않습니다.");		
	} else {	
		// 정답과 사용자가 파라미터로 전송해준 비밀번호를 대조 
		if (answer.getUser_pass().equals(input.getUser_pass())) {
			// 로그인 성공
			// out.print("<h3>아이디와 비밀번호 일치함. 로그인 성공.</h3>");
			Cookie loginCookie = new Cookie("login", Integer.toString(answer.getUser_per()));
			loginCookie.setMaxAge(-1);
			loginCookie.setPath("/");
			
			response.addCookie(loginCookie);
		} else {
			// 로그인 실패
			// out.print("<h3>아이디는 조회되었으나 비밀번호가 틀림.</h3>");
			session.setAttribute("status", "아이디 혹은 비밀번호가 올바르지 않습니다.");	
		}
	}

	if (conn != null) conn.close();
	
	response.sendRedirect("../login.jsp");
%>






