<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
// Parameter로 전달받은 empno를 이용하여 DB에서 해당 empno를 가진 사원정보를 꺼내보세요
%>
	
<% 
String empno = request.getParameter("empno");
if(empno == null || empno==""){
	response.sendRedirect("./dbcon01.jsp");
}
// 서버가 켜진 후 딱 한번만 실행되면 되는 코드
// Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:scott/TIGER@localhost:1521:XE";

Connection conn = DriverManager.getConnection(url);

String sql = "SELECT * FROM emp WHERE empno=" + empno;
PreparedStatement pstmt = conn.prepareStatement(sql);

ResultSet rs = pstmt.executeQuery();



//  String name = request.getParameter("ename");
	//String job = request.getParameter("job"); 
//	String mgr  = request.getParameter("mgr"); 
//	String hiredate = request.getParameter("hiredate"); 
//	String sal = request.getParameter("sal"); 
//	String comm = request.getParameter("comm"); 
//	String deptno = request.getParameter("deptno"); 
%> 




<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>modiForm.jsp</title>
</head>
<body>
	<c:if test= "${sessionScope.update eq true}">
	<script>
	alert('성공적으로 수정되었습니다.');
	</script>
	<c:remove var="update" scope="session" />
	</c:if>


	<h1> 수정/삭제 페이지 </h1>

<% if (rs.next()) {%>
<form action="./modify.jsp" method="post">
<table>
	<tr>
		<th>EMPNO</th>
	<td><input name="empno" value="<%=rs.getInt(1) %>"></td>		
	</tr>
	<tr>
		<th>ENAME</th>
	<td><input name="ename" value="<%=rs.getString(2) %>"></td>	
	</tr>
	<tr>
		<th>JOB</th>
	<td><input name="job" value="<%=rs.getString(3) %>"></td>	
	</tr>
	<tr>
		<th>MGR</th>
	<td><input name="mgr" value="<%=rs.getInt(4)%>"></td>
	</tr>
	
	<tr>
		<th>HIREDATE</th>
	<td><input name="hiredate" value="<%=rs.getDate(5)%>"></td>		
	</tr>
	
	<tr>
		<th>SAL</th>
	<td><input name="sal" value="<%=rs.getDouble(6)%>"></td>
		
	</tr>
	<tr>
		<th>COMM</th>
	<td><input name="comm" value="<%=rs.getDouble(7)%>"></td>
	</tr>

	<tr>
		<th>DEPTNO</th>
	<td><input name="deptno" value="<%=rs.getInt(8)%>"></td>
	</tr>
	
	<tr>
		<th><button type = "submit">수정</button></th>
</form>
		
		
		<th>
		<form method="POST">
		<button type = "submit">삭제</button>
		</form>
		</th>
		</tr>
		
</table>
	
<%} else {%>
<h1>해당 사원이 존재하지 않습니다.</h1>

<%} %>

<a href="./dbcon01.jsp"> 목록으로.. </a><br>



</body>
</html>