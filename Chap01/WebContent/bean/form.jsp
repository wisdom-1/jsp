<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>form.jsp</title>
</head>
<body>

<h3> 학생 정보 입력 폼 </h3>

<p>


Form 에서 자바빈 객체를 이용하고자 할 때 주의할 점 <br>
	-자바빈 객체에서 사용한 변수명과 input 태그의 name을 동일하게 설정해야 한다.
</p>

<!-- 

private String name;
	private int age;
	private int kor;
	private int eng;
	private int math;
	private double avg;

 -->
<h3>Controller01로 보내는 폼/h3>


<form action="./addStudentController01.jsp" method="POST">

<table>
<tr>
<th>이름</th>
<td><input name ="name" placeholder="이름을 입력하세요" required></td>
</tr>


<tr>
<th>나이</th>
<td><input name ="age" placeholder="나이을 입력하세요"></td>
</tr>



<tr>
<th>국어점수</th>
<td><input name ="kor" placeholder="국어점수를 입력하세요" required></td>
</tr>

<tr>
<th>영어점수</th>

<td><input name ="eng" placeholder="영어점수를 입력하세요" required></td>
</tr>

<tr>
<th>수학점수</th>

<td><input name ="math" placeholder="수학 점수를 입력하세요" required></td>
</tr>

<tr>
<td colspan ="2">
</tr>


<tr>
<td><input type="submit" value="전송"></td>
<td><button onclick="">전송2</button></td>
</tr>



</table>

</form>






<h3>Controller02로 보내는 폼/h3>


<form action="./addStudentController01.jsp" method="POST">

<table>
<tr>
<th>이름</th>
<td><input name ="name" placeholder="이름을 입력하세요" required></td>
</tr>


<tr>
<th>나이</th>
<td><input name ="age" placeholder="나이을 입력하세요"></td>
</tr>



<tr>
<th>국어점수</th>
<td><input name ="kor" placeholder="국어점수를 입력하세요" required></td>
</tr>

<tr>
<th>영어점수</th>

<td><input name ="eng" placeholder="영어점수를 입력하세요" required></td>
</tr>

<tr>
<th>수학점수</th>

<td><input name ="math" placeholder="수학 점수를 입력하세요" required></td>
</tr>




<tr>
<td colspan ="2"><input type="submit" value="전송"></td>
<td><button onclick="">전송2</button></td>
</tr>



</table>

</form>



<h3>Controller03로 보내는 폼/h3>


<form action="./addStudentController01.jsp" method="POST">

<table>
<tr>
<th>이름</th>
<td><input name ="name" placeholder="이름을 입력하세요" required></td>
</tr>


<tr>
<th>나이</th>
<td><input name ="age" placeholder="나이을 입력하세요"></td>
</tr>



<tr>
<th>국어점수</th>
<td><input name ="kor" placeholder="국어점수를 입력하세요" required></td>
</tr>

<tr>
<th>영어점수</th>

<td><input name ="eng" placeholder="영어점수를 입력하세요" required></td>
</tr>

<tr>
<th>수학점수</th>

<td><input name ="math" placeholder="수학 점수를 입력하세요" required></td>
</tr>




<tr>
<td colspan ="2"><input type="submit" value="전송"></td>
<td><button onclick="">전송2</button></td>
</tr>

</table>

</form>




</body>
</html>