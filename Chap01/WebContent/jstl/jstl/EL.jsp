<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

   
<%
// JSP 에서 Attribute를 실어놓을 수 있는 객체 4가지
// 1. application 객체
// 	- 한 서버에 하나이며 서버가 꺼질 때 까지 값이 유지된다.
// 2. session 객체
//		- 한 브라우저 (클라이언트)당 하나이며 세션이 만료될때까지 유지된다.

// 3. request 객체
//		-요청마다 생성되는 객체. forward를 통한 전달까지 가능하다.
//	4. pageContext 객체
// 		- 하나의 JSP 페이지를 벗어나면 수명이 다하는 내장객체
//1번으로 갈 수록 전역변수같은 느낌, 4번으로 갈 수록 지역변수같은 느낌

	application.setAttribute("id","app_id");	//밑의 session도 주석처리했는데 값이 안나오면, 크롬을 껐다가 키자.
	session.setAttribute("id" , "session_id");	//주석처리해가면서 다시 실행해보고 결과값을 주의깊게 보자.
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

	<h3>EL로 ID를 출력 : ${id }</h3>

	<p>
		EL을 통해 Attribute의 값을 사용할 시에 중복되는 Key값이 있다면<br> 기본적으로 가장 좁은 범위의 값을
		사용한다.

	</p>

	<h3>EL의 리터럴</h3>

	<ul>
		<li>boolean type : ${true }, ${false}</li>
		<li>int type : ${123 }, ${456 }</li>
		<li>double type : ${1.234 }</li>
		<li>String type : ${"JAVA"}, ${'Jsp' }</li>
	</ul>



	<hr>

	<h3>EL의 연산자</h3>
	<ul>
		<li>산술 연산자 : +,-, *, / , %, mod
		</li>
		<li>비교 연산자 : ==, !=, &lt; , &gt; , &ge; , &le;,
		 eq(같음), ne(같지 않음), lt(더 작음), gt(더 큼), le(작거나 같음), ge(크거나 같음)
		</li>
		<li>
			${'a' eq 'a' }, ${'c' gt 'a' }, ${'z' lt 'a' }
		</li>
		<li>
			논리 연산자 : &&, ||, ! , and, or, not
		</li>
		
		<li>
			${true or false }, ${true and true }, ${not true }, ${!true }
		</li>
		<li>
		empty : null이거나 비어있는 문자라면 true 가 됨.
		</li>


	</ul>
<%
// empty를 JAVA로 표현하려면 번거롭다.
String str ="";
out.print(str ==null || str =="");
%>

<hr>

<h3>EL로 JSP 객체에 접근하기 </h3>

<p>
	가장 가까운 영역을 무시하고 원하는 영역의 Attribute에 접근하기
</p>



pageScope :  ${pageScope.id }<br>
requestScope : ${requestScope.id }<br>
sessionScope : ${sessionScope.id }<br>
applicationScope : ${applicationScope.id }<br>


<p>
	파라미터 값에 접근하기 (클라이언트가 Form으로 전송한 데이터)<br> 
</p>

	파라미터 값 보기 : ${param.age } <br>
	파라미터의 모든 값 보기 : ${paramValues} <br>

	쿠키 값 보기 : ${cookie.JSESSIONID.name }=${cookid.JSESSIONID.value }<br>

</body>
</html>