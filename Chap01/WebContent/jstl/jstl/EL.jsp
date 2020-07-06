<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

   
<%
// JSP ���� Attribute�� �Ǿ���� �� �ִ� ��ü 4����
// 1. application ��ü
// 	- �� ������ �ϳ��̸� ������ ���� �� ���� ���� �����ȴ�.
// 2. session ��ü
//		- �� ������ (Ŭ���̾�Ʈ)�� �ϳ��̸� ������ ����ɶ����� �����ȴ�.

// 3. request ��ü
//		-��û���� �����Ǵ� ��ü. forward�� ���� ���ޱ��� �����ϴ�.
//	4. pageContext ��ü
// 		- �ϳ��� JSP �������� ����� ������ ���ϴ� ���尴ü
//1������ �� ���� ������������ ����, 4������ �� ���� ������������ ����

	application.setAttribute("id","app_id");	//���� session�� �ּ�ó���ߴµ� ���� �ȳ�����, ũ���� ���ٰ� Ű��.
	session.setAttribute("id" , "session_id");	//�ּ�ó���ذ��鼭 �ٽ� �����غ��� ������� ���Ǳ�� ����.
	request.setAttribute("id" , "req_id");
	pageContext.setAttribute("id" ,"page_id");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>EL.jsp</title>
</head>
<body>

	<h3>EL�� ID�� ��� : ${id }</h3>

	<p>
		EL�� ���� Attribute�� ���� ����� �ÿ� �ߺ��Ǵ� Key���� �ִٸ�<br> �⺻������ ���� ���� ������ ����
		����Ѵ�.

	</p>

	<h3>EL�� ���ͷ�</h3>

	<ul>
		<li>boolean type : ${true }, ${false}</li>
		<li>int type : ${123 }, ${456 }</li>
		<li>double type : ${1.234 }</li>
		<li>String type : ${"JAVA"}, ${'Jsp' }</li>
	</ul>



	<hr>

	<h3>EL�� ������</h3>
	<ul>
		<li>��� ������ : +,-, *, / , %, mod
		</li>
		<li>�� ������ : ==, !=, &lt; , &gt; , &ge; , &le;,
		 eq(����), ne(���� ����), lt(�� ����), gt(�� ŭ), le(�۰ų� ����), ge(ũ�ų� ����)
		</li>
		<li>
			${'a' eq 'a' }, ${'c' gt 'a' }, ${'z' lt 'a' }
		</li>
		<li>
			�� ������ : &&, ||, ! , and, or, not
		</li>
		
		<li>
			${true or false }, ${true and true }, ${not true }, ${!true }
		</li>
		<li>
		empty : null�̰ų� ����ִ� ���ڶ�� true �� ��.
		</li>


	</ul>
<%
// empty�� JAVA�� ǥ���Ϸ��� ���ŷӴ�.
String str ="";
out.print(str ==null || str =="");
%>

<hr>

<h3>EL�� JSP ��ü�� �����ϱ� </h3>

<p>
	���� ����� ������ �����ϰ� ���ϴ� ������ Attribute�� �����ϱ�
</p>



pageScope :  ${pageScope.id }<br>
requestScope : ${requestScope.id }<br>
sessionScope : ${sessionScope.id }<br>
applicationScope : ${applicationScope.id }<br>


<p>
	�Ķ���� ���� �����ϱ� (Ŭ���̾�Ʈ�� Form���� ������ ������)<br> 
</p>

	�Ķ���� �� ���� : ${param.age } <br>
	�Ķ������ ��� �� ���� : ${paramValues} <br>

	��Ű �� ���� : ${cookie.JSESSIONID.name }=${cookid.JSESSIONID.value }<br>

</body>
</html>