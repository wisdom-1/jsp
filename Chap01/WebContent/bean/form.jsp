<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>form.jsp</title>
</head>
<body>

<h3> �л� ���� �Է� �� </h3>

<p>


Form ���� �ڹٺ� ��ü�� �̿��ϰ��� �� �� ������ �� <br>
	-�ڹٺ� ��ü���� ����� ������� input �±��� name�� �����ϰ� �����ؾ� �Ѵ�.
</p>

<!-- 

private String name;
	private int age;
	private int kor;
	private int eng;
	private int math;
	private double avg;

 -->
<h3>Controller01�� ������ ��/h3>


<form action="./addStudentController01.jsp" method="POST">

<table>
<tr>
<th>�̸�</th>
<td><input name ="name" placeholder="�̸��� �Է��ϼ���" required></td>
</tr>


<tr>
<th>����</th>
<td><input name ="age" placeholder="������ �Է��ϼ���"></td>
</tr>



<tr>
<th>��������</th>
<td><input name ="kor" placeholder="���������� �Է��ϼ���" required></td>
</tr>

<tr>
<th>��������</th>

<td><input name ="eng" placeholder="���������� �Է��ϼ���" required></td>
</tr>

<tr>
<th>��������</th>

<td><input name ="math" placeholder="���� ������ �Է��ϼ���" required></td>
</tr>

<tr>
<td colspan ="2">
</tr>


<tr>
<td><input type="submit" value="����"></td>
<td><button onclick="">����2</button></td>
</tr>



</table>

</form>






<h3>Controller02�� ������ ��/h3>


<form action="./addStudentController01.jsp" method="POST">

<table>
<tr>
<th>�̸�</th>
<td><input name ="name" placeholder="�̸��� �Է��ϼ���" required></td>
</tr>


<tr>
<th>����</th>
<td><input name ="age" placeholder="������ �Է��ϼ���"></td>
</tr>



<tr>
<th>��������</th>
<td><input name ="kor" placeholder="���������� �Է��ϼ���" required></td>
</tr>

<tr>
<th>��������</th>

<td><input name ="eng" placeholder="���������� �Է��ϼ���" required></td>
</tr>

<tr>
<th>��������</th>

<td><input name ="math" placeholder="���� ������ �Է��ϼ���" required></td>
</tr>




<tr>
<td colspan ="2"><input type="submit" value="����"></td>
<td><button onclick="">����2</button></td>
</tr>



</table>

</form>



<h3>Controller03�� ������ ��/h3>


<form action="./addStudentController01.jsp" method="POST">

<table>
<tr>
<th>�̸�</th>
<td><input name ="name" placeholder="�̸��� �Է��ϼ���" required></td>
</tr>


<tr>
<th>����</th>
<td><input name ="age" placeholder="������ �Է��ϼ���"></td>
</tr>



<tr>
<th>��������</th>
<td><input name ="kor" placeholder="���������� �Է��ϼ���" required></td>
</tr>

<tr>
<th>��������</th>

<td><input name ="eng" placeholder="���������� �Է��ϼ���" required></td>
</tr>

<tr>
<th>��������</th>

<td><input name ="math" placeholder="���� ������ �Է��ϼ���" required></td>
</tr>




<tr>
<td colspan ="2"><input type="submit" value="����"></td>
<td><button onclick="">����2</button></td>
</tr>

</table>

</form>




</body>
</html>