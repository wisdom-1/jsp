<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������ ��</title>
</head>
<body>
<!-- /chap02/mvc/join���� GET��� ��û�� ������ �� �������� �����ϵ��� �������� -->


<!-- 
�����ؼ� �� �����
private int id;				//ȸ�� ��ȣ
	private String user_id;		// ���̵�
	private String user_pwd;	//���
	private String name;		//�̸�
	private Date joinDate;		//������
	private Date Birthday;		//����
	private boolean validate;		//��������
	private boolean marketing;		//������ ���� ����
 -->

<!--  ȸ�� Bean ��ü�� �����Ͽ� form�� �ϼ��� ������. -->

<h1>ȸ������ ������</h1>
<form action="/chap02/mvc/join" method="POST">
<table>	
<tr>
	<th>���̵�</th>
	<td><input name="user_id" required></td>
</tr>
<tr>
	<th>��й�ȣ</th>
	<td><input type="password" name="user_pwd" required></td>
</tr>
<tr>
	<th>�̸�</th>
	<td><input name="user_name" required></td>
</tr>
<tr>
	<th>����</th>
	<td><input type="date" name="birthday" required></td>
</tr>
<tr>
	<th>������ ����</th>
	<td><input type="checkbox" name="marketing"></td>
</tr>
<tr>
	<td colspan="2"><button type="submit">ȸ������</button></td>
</tr>
</table>
</form>

</body>
</html>