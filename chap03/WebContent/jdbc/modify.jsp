<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<!-- setProperty�� * �� �̿��� �Ķ���� ���� �ڹٺ� ��ü�� ���ϰ� ���� --> 
   
<jsp:useBean id="emp" class="chap03.dto.Emp" />
<jsp:setProperty name="emp" property="*"/>


<%
// ���޹��� �����ͷ� ������ �� �� ����Ʈ Ȥ�� ���� �������� �̵�
	
// System.out.println("���� ������ ����");
// System.out.println("EMP ��ü : " +emp);
// System.out.println("ENAME : " +emp.getEname());

String url ="jdbc:oracle:thin:scott/TIGER@localhost:1521:XE";

Connection conn = DriverManager.getConnection(url);
// JDBC�� �������� �����ϸ� �⺻������ AutoCommit�� �ȴ�.
//conn.setAutoCommit(false);	// AutoCommit�� �ȴٸ� Connection �ν��Ͻ���  AutoCommit�� �����ؾ� �Ѵ�.

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
			
			// UPDATE /INSERT/DELETE��  executeUpdate()�޼��带 ����Ѵ�.
			int row = pstmt.executeUpdate();
			
			out.print("<script>alert('"+row+"���� �����Ǿ����ϴ�!')</script>");
			
			//session :  Ŭ���̾�Ʈ�� �������� �ϳ��� �����ϴ� ����
			// �����̷�Ʈ�� �ϴ��� �������� �ٲ��� �����Ƿ� ���� ��û���� �����ְ� �ȴ�.
			session.setAttribute("update",true);
			//session.removeAttribute(arg0) -> scriptlit�� ���� �Ⱦ �̷��� �Ⱦ�
			
			//������ �� ���� �������� �����̷�Ʈ
			response.sendRedirect("./modiForm.jsp?empno=" +emp.getEmpno());
			
// DriverManager.getConnection(url);


%>