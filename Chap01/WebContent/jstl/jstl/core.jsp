<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>jstl/core.jsp</title>
</head>
<body>


<!--  jstl로 변수(Attribute)를 선언 혹은 값을 대입 -->
<c:set var="a" value="10"/>

<p>
	JSTL로 선언한 값: ${a }
</p>

<%
request.setAttribute("b", 10);

%>
<p>
	JAVA로 선언한 값: <%=request.getAttribute("b") %>
</p>

<hr>
<c:set var="a" value="8"/>

<!-- c:if -> 참인경우 실행(else if, else 가 없음 -->
<c:if test="${a eq 8 }">
<p>
현재 a는 8입니다.
</p>
</c:if>
<hr>
<c:choose>
	<c:when test="${a > b }">
	<p> 현재 a가  b보다 큽니다.</p>
	</c:when>
	<c:when test="${a < b }">
	<p> 현재 a가  b보다 작습니다..</p>
	</c:when>
	
	<c:otherwise>
	<p> 현재 a와 b의 값이 같습니다.</p>
	</c:otherwise>

</c:choose>

<hr>

<!-- 

	div : 줄을 바꾸는 영역을 설정한다. (block 영역을 설정한다.)
	span : 줄을 안바꾸는 영역을 설정한다. (inline 영역을 설정한다.)

 -->
 

 <h5>DIV</h5>
다람쥐 <div style="color: blue;">헌 쳇바퀴에 타고파<br>
다람쥐 헌 쳇바퀴에 타고파<br>
다람쥐 헌 쳇바퀴에 타고파<br>
다람쥐 헌 쳇바퀴</div>에 타고파<br>
다람쥐 헌 쳇바퀴에 타고파<br>
다람쥐 헌 쳇바퀴에 타고파<br>
다람쥐 헌 쳇바퀴에 타고파<br>

 <h5>SPAN</h5>
다람쥐 <span style="color: blue;">헌 쳇바퀴에 타고파<br>
다람쥐 헌 쳇바퀴에 타고파<br>
다람쥐 헌 쳇바퀴에 타고파<br>
다람쥐 헌 쳇바퀴</span>에 타고파<br>
다람쥐 헌 쳇바퀴에 타고파<br>
다람쥐 헌 쳇바퀴에 타고파<br>
다람쥐 헌 쳇바퀴에 타고파<br>


<!-- c:out -원하는 내용을 HTML에 출력한다. 태그를 무효화한다. -->
<c:set var ="txt" value="<span style='color:red;'>C:OUT!!</span>"/>


<ol>
<li>그냥 출력 : ${txt} </li>
<li> C:OUT 으로 출력 :<c:out value="${txt }" escapeXml="true"/>  </li>
<li> C:OUT 으로 출력 :<c:out value="${txt }" escapeXml="false"/>  </li>

</ol>

<hr>

<!-- c:forEach -반복문. begin/end 혹은 items를 이용한다. -->
<c:forEach var="i" begin="1" end="10">

<b>Hello! ${i }</b> <br>
</c:forEach>

<hr>
<!-- c:forTokens - 데이터를 split하면서 반복하는 반복문   
Token 은? 문자열 자르는.   apple/bannana/  split, StringTokenizer

 -->
<c:forTokens items="red@tomato/orange,purple/yellow/blue/navy" delims="/@," var="color">

<div style="border:1px solid ${color};">
${color }color div
</div>
</c:forTokens>

<hr>

<!--  c:url - 경로를 보다 쉽게 완성할 수 있도록 도와준다. -->
<c:url value="/abc/123/core.jsp"/> <br>


<c:url value="/abc/123/core.jsp">

	<c:param name="id" value="10"/>
	<c:param name="age" value="13"     />

</c:url>






</body>
</html>