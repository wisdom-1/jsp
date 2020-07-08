<%@ page import="java.sql.*, java.util.ArrayList , chap04.dto.*, chap04.dao.* " %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<%
    
Class.forName("oracle.jdbc.driver.OracleDriver");

String url = "jdbc:oracle:thin:@localhost:1521:XE";	
String user = "scott";
String pass = "TIGER";

Connection con = DriverManager.getConnection(url,user,pass);

PreparedStatement pstmt = con.prepareStatement("SELECT * FROM emp");
ResultSet rs = pstmt.executeQuery();

PreparedStatement pstmt2 = con.prepareStatement("SELECT * from DEPT ");
ResultSet rs2 = pstmt2.executeQuery(); 

System.out.println(rs2);
%>