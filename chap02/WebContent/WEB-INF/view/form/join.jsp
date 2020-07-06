<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입 폼</title>
</head>
<body>
<!-- /chap02/mvc/join으로 GET방식 요청을 보내면 이 페이지로 도착하도록 만들어보세요 -->


<!-- 
참고해서 폼 만들기
private int id;				//회원 번호
	private String user_id;		// 아이디
	private String user_pwd;	//비번
	private String name;		//이름
	private Date joinDate;		//가입일
	private Date Birthday;		//생일
	private boolean validate;		//인증여부
	private boolean marketing;		//마케팅 동의 여부
 -->

<!--  회원 Bean 객체를 참조하여 form을 완성해 보세요. -->

<h1>회원가입 페이지</h1>
<form action="/chap02/mvc/join" method="POST">
<table>	
<tr>
	<th>아이디</th>
	<td><input name="user_id" required></td>
</tr>
<tr>
	<th>비밀번호</th>
	<td><input type="password" name="user_pwd" required></td>
</tr>
<tr>
	<th>이름</th>
	<td><input name="user_name" required></td>
</tr>
<tr>
	<th>생일</th>
	<td><input type="date" name="birthday" required></td>
</tr>
<tr>
	<th>마케팅 동의</th>
	<td><input type="checkbox" name="marketing"></td>
</tr>
<tr>
	<td colspan="2"><button type="submit">회원가입</button></td>
</tr>
</table>
</form>

</body>
</html>