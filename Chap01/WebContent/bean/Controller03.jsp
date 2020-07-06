<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- Bean��ü�� �̿��ؼ� �Ķ���� �ڵ����� �����ϱ� -->

<%--
	chap01.beans.Student student = new chap01.beans.Student();
�Ʒ��� ���� student �� ���� ��ü�� ��ġ�Ƿ� ���� �� ����.
--%>



<!-- 
	jsp:useBean
	- Ŭ���� ���� = new Ŭ����();�� ������ �ǹ̸� ���� jsp�׼��±�
	- Attribute���� �߰��Ѵ�.

 -->



<!-- jsp:useBean : Ŭ����, ���� = new Ŭ����();�� ������ �ǹ̸� ���� jsp �׼��±� -->
<jsp:useBean  id="student" class="chap01.beans.Student" scope="request" >  </jsp:useBean>

<!-- jsp:setProperty
	- �ڹٺ� ��ü�� setter�� �̿��� ���� ä���ش�.
	- property�� Map�� Key�� �ش��Ѵ�.
	- property�� input�� name �Ӽ��� �ش��Ѵ�.
	
	- property�� HTML�� name Attribute�� �ش��Ѵ�.
	 (���޹��� name Attribute�� Bean��ü�� �ʵ���� ��ġ�ϸ� �˾Ƽ� ������ ���ش�.)
	- property�� *�� ����ϸ�
					���޹���  input�� name �Ӽ���
					Bean��ü�� �ʵ���� ��ġ�ϸ� �˾Ƽ� ������ ���ش�.
	 -->



<!--  jsp�׼� �±׵� ��ũ��Ʈ �ּ��� �̿��Ѵ�. -->
<%-- 
<!-- ������ �� ��� -->
<jsp:setProperty name="student" property="name"
	value="${param.name }"/>
	 
<jsp:setProperty name="student" property="age"
	value="${param.age }"/>
<jsp:setProperty name="student" property="kor"
	value="${param.kor }"/>
<jsp:setProperty name="student" property="eng"
	value="${param.eng }"/>
<jsp:setProperty name="student" property="math"
	value="${param.math }"/>

--%>

	 
	 <!-- jsp:setProperty ���
	 form name�� Bean �ʵ���� ��ġ��Ű�� ��û ��������.
	  -->
<jsp:setProperty name="student" property="*"/>
	 
	 




<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>Bean�� ����� ���޹��� �л� ����</h3>


<b>jsp:useBean, jsp:setProperty,
EL�� Ȱ���ϸ� ������ ������ ��������. <br> </b>



<h5>EL�� ���</h5>

<!-- EL�� ��ü�� . ��� �̿��ϴ� �ʵ���� ������ �ۼ��Ǿ� �ִ� getter�� �̿��Ѵ�. -->
${student }<br>
${student.name }<br>
${student.age }<br>
${student.kor }<br>
${student.eng }<br>
${student.math }<br>
${student.avg }<br>


<hr>
<h5>jsp:getProperty�� ���</h5>






</body>
</html>