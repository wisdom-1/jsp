<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    // jdbc : DB와의 연결을 위해 JAVA가 제공하는  API 이다.
    
    // 어떤 데이터베이스더라도 JAVA와의 연동을 위해서는 jdbc의 형태에 맞춰 API를 제공해야 한다.
    // 덕분에 JAVA 프로그래머들은 DB 종류와 상관없이 일관된 코드를 작성할 수 있다.
    
    // jdbc의 가장 기본적인 사용법
    
    // 1. 드라이버 클래스 로드
    // - 사용할 DB가 제공하는 JDBC 드라이버를 불러온다.
	// - Class.forName("JDBC드라이버 클래스 경로")
    Class.forName("oracle.jdbc.driver.OracleDriver"); // class 를 부르기만 해도 사용가능하다.(static이라서)
	// 2. DriverManager 클래스를 통해 DB와의 연결을 생성
	String url = "jdbc:oracle:thin:@localhost:1521:XE";	//@localhost:1521	//127.0.0.1
    String user = "scott";
    String pass = "TIGER";
    
	Connection con = DriverManager.getConnection(url,user,pass);
	
	// 3. 받아온 연결을 통해 DB에 원하는 쿼리를 생성,전달 가능.
	// - prepareStatement로 원하는 쿼리문을 준비한다.
	// - execute문을 통해 쿼리문을 DB에 전송하고 실행한다.
	// - SELECT문이라면 결과를 Set 타입으로 반환받는다.
	// - INSERT, UPDATE, DELETE라면 바뀐 행의 개수를 int로 반환받는다.
	PreparedStatement pstmt = con.prepareStatement("SELECT * FROM emp");
	ResultSet rs = pstmt.executeQuery();

	
	
	//session.setAttribute("update", false);
    
%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>DB 연결 01</title>
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
<th> 수정/삭제  </th>   

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
	<td><button onclick="location.href='./modiForm.jsp?empno=<%=rs.getInt(1)%>'">수정/삭제</button><!--  UPDATE페이지로 이동 -->
	</td>
	
</tr>
	
		
<%	}%>

</table>
</body>
</html>

<%
//4. 다 쓴 연결은 반드시 닫아주도록 한다.<가장 나중에 연 순서대로 닫아야 한다.>
if (rs!= null) rs.close();
if (pstmt != null)pstmt.close();
if (con!= null) con.close();
request.setAttribute("emp_list",rs);

%>

