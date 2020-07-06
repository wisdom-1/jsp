<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<!-- setProperty의 * 를 이용해 파라미터 값을 자바빈 객체에 편하게 대입 --> 
   
<jsp:useBean id="emp" class="chap03.dto.Emp" />
<jsp:setProperty name="emp" property="*"/>


<%
// 전달받은 데이터로 수정을 한 뒤 리스트 혹은 수정 페이지로 이동
	
// System.out.println("수정 페이지 도착");
// System.out.println("EMP 객체 : " +emp);
// System.out.println("ENAME : " +emp.getEname());

String url ="jdbc:oracle:thin:scott/TIGER@localhost:1521:XE";

Connection conn = DriverManager.getConnection(url);
// JDBC로 쿼리문을 실행하면 기본적으로 AutoCommit이 된다.
//conn.setAutoCommit(false);	// AutoCommit이 싫다면 Connection 인스턴스로  AutoCommit을 해제해야 한다.

String sql = "UPDATE emp SET "
			+"empno="	+emp.getEmpno()	+ ","
			+"ename='"	+emp.getEname()+ "',"
			+"job='"	+emp.getJob() + "',"
			+"mgr="		+emp.getMgr()+ ","
			+"hiredate='"	+emp.getHiredate() +"',"
			+"sal=round("	+emp.getSal() + ",2),"
			+"comm=round("	+emp.getComm() + ",2),"
			+ "deptno=" +emp.getDeptno()
			+" WHERE empno=" +emp.getEmpno();
PreparedStatement pstmt = conn.prepareStatement(sql);
			
			// UPDATE /INSERT/DELETE는  executeUpdate()메서드를 사용한다.
			int row = pstmt.executeUpdate();
			
			out.print("<script>alert('"+row+"행이 수정되었습니다!')</script>");
			
			//session :  클라이언트의 브라우저당 하나씩 존재하는 영역
			// 리다이렉트를 하더라도 브라우저는 바뀌지 않으므로 다음 요청까지 남아있게 된다.
			session.setAttribute("update",true);
			//session.removeAttribute(arg0) -> scriptlit을 열기 싫어서 이렇게 안씀
			
			//수정한 뒤 수정 페이지로 리다이렉트
			response.sendRedirect("./modiForm.jsp?empno=" +emp.getEmpno());
			
// DriverManager.getConnection(url);


%>