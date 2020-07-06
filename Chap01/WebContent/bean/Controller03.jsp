<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- Bean객체를 이용해서 파라미터 자동으로 매핑하기 -->

<%--
	chap01.beans.Student student = new chap01.beans.Student();
아래의 변수 student 와 위의 객체가 겹치므로 빨간 줄 떴음.
--%>



<!-- 
	jsp:useBean
	- 클래스 변수 = new 클래스();와 동일한 의미를 갖는 jsp액션태그
	- Attribute에도 추가한다.

 -->



<!-- jsp:useBean : 클래스, 변수 = new 클래스();와 동일한 의미를 갖는 jsp 액션태그 -->
<jsp:useBean  id="student" class="chap01.beans.Student" scope="request" >  </jsp:useBean>

<!-- jsp:setProperty
	- 자바빈 객체의 setter를 이용해 값을 채워준다.
	- property가 Map의 Key에 해당한다.
	- property가 input의 name 속성에 해당한다.
	
	- property가 HTML의 name Attribute에 해당한다.
	 (전달받은 name Attribute와 Bean객체의 필드명이 일치하면 알아서 매핑을 해준다.)
	- property에 *를 사용하면
					전달받은  input의 name 속성과
					Bean객체의 필드명이 일치하면 알아서 매핑을 해준다.
	 -->



<!--  jsp액션 태그도 스크립트 주석을 이용한다. -->
<%-- 
<!-- 이전에 한 방식 -->
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

	 
	 <!-- jsp:setProperty 방식
	 form name과 Bean 필드명을 일치시키면 엄청 편해진다.
	  -->
<jsp:setProperty name="student" property="*"/>
	 
	 




<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>Bean을 사용해 전달받은 학생 정보</h3>


<b>jsp:useBean, jsp:setProperty,
EL을 활용하면 데이터 전달이 편해진다. <br> </b>



<h5>EL로 출력</h5>

<!-- EL로 객체에 . 찍고 이용하는 필드명을 적으면 작성되어 있는 getter를 이용한다. -->
${student }<br>
${student.name }<br>
${student.age }<br>
${student.kor }<br>
${student.eng }<br>
${student.math }<br>
${student.avg }<br>


<hr>
<h5>jsp:getProperty로 출력</h5>






</body>
</html>