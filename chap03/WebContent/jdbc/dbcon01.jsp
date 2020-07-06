<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    // jdbc : DB���� ������ ���� JAVA�� �����ϴ�  API �̴�.
    
    // � �����ͺ��̽����� JAVA���� ������ ���ؼ��� jdbc�� ���¿� ���� API�� �����ؾ� �Ѵ�.
    // ���п� JAVA ���α׷��ӵ��� DB ������ ������� �ϰ��� �ڵ带 �ۼ��� �� �ִ�.
    
    // jdbc�� ���� �⺻���� ����
    
    // 1. ����̹� Ŭ���� �ε�
    // - ����� DB�� �����ϴ� JDBC ����̹��� �ҷ��´�.
	// - Class.forName("JDBC����̹� Ŭ���� ���")
    Class.forName("oracle.jdbc.driver.OracleDriver"); // class �� �θ��⸸ �ص� ��밡���ϴ�.(static�̶�)
	// 2. DriverManager Ŭ������ ���� DB���� ������ ����
	String url = "jdbc:oracle:thin:@localhost:1521:XE";	//@localhost:1521	//127.0.0.1
    String user = "scott";
    String pass = "TIGER";
    
	Connection con = DriverManager.getConnection(url,user,pass);
	
	// 3. �޾ƿ� ������ ���� DB�� ���ϴ� ������ ����,���� ����.
	// - prepareStatement�� ���ϴ� �������� �غ��Ѵ�.
	// - execute���� ���� �������� DB�� �����ϰ� �����Ѵ�.
	// - SELECT���̶�� ����� Set Ÿ������ ��ȯ�޴´�.
	// - INSERT, UPDATE, DELETE��� �ٲ� ���� ������ int�� ��ȯ�޴´�.
	PreparedStatement pstmt = con.prepareStatement("SELECT * FROM emp");
	ResultSet rs = pstmt.executeQuery();

	
	
	//session.setAttribute("update", false);
    
%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>DB ���� 01</title>
<style>
tr:nth-child(even){
background-color : skyblue;
}
th:nth-child(even){
background-color : navy;
color : white;
}
</style>

</head>
<body>

<table>
<tr>

<th>EMPNO    NOT NULL NUMBER(4) </th>   
<th>ENAME             VARCHAR2(10) </th>   
<th>JOB               VARCHAR2(9)  </th>   
<th>MGR               NUMBER(4)    </th>   
<th>HIREDATE          DATE         </th>   
<th>SAL               NUMBER(7,2)  </th>   
<th>COMM              NUMBER(7,2)  </th>   
<th>DEPTNO            NUMBER(2)    </th>   
<th> ����/����  </th>   

</tr>


<%  while (rs.next()) { %>
<tr>
	<td><%=rs.getInt(1) %></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getInt(4)%></td>
	<td><%=rs.getDate(5)%></td>
	<td><%=rs.getDouble(6)%></td>
	<td><%=rs.getDouble(7)%></td>
	<td><%=rs.getInt(8)%></td>
	<td><button onclick="location.href='./modiForm.jsp?empno=<%=rs.getInt(1)%>'">����/����</button><!--  UPDATE�������� �̵� -->
	</td>
	
</tr>
	
		
<%	}%>

</table>
</body>
</html>

<%
//4. �� �� ������ �ݵ�� �ݾ��ֵ��� �Ѵ�.<���� ���߿� �� ������� �ݾƾ� �Ѵ�.>
if (rs!= null) rs.close();
if (pstmt != null)pstmt.close();
if (con!= null) con.close();
request.setAttribute("emp_list",rs);

%>

