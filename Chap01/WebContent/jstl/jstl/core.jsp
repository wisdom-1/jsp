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


<!--  jstl�� ����(Attribute)�� ���� Ȥ�� ���� ���� -->
<c:set var="a" value="10"/>

<p>
	JSTL�� ������ ��: ${a }
</p>

<%
request.setAttribute("b", 10);

%>
<p>
	JAVA�� ������ ��: <%=request.getAttribute("b") %>
</p>

<hr>
<c:set var="a" value="8"/>

<!-- c:if -> ���ΰ�� ����(else if, else �� ���� -->
<c:if test="${a eq 8 }">
<p>
���� a�� 8�Դϴ�.
</p>
</c:if>
<hr>
<c:choose>
	<c:when test="${a > b }">
	<p> ���� a��  b���� Ů�ϴ�.</p>
	</c:when>
	<c:when test="${a < b }">
	<p> ���� a��  b���� �۽��ϴ�..</p>
	</c:when>
	
	<c:otherwise>
	<p> ���� a�� b�� ���� �����ϴ�.</p>
	</c:otherwise>

</c:choose>

<hr>

<!-- 

	div : ���� �ٲٴ� ������ �����Ѵ�. (block ������ �����Ѵ�.)
	span : ���� �ȹٲٴ� ������ �����Ѵ�. (inline ������ �����Ѵ�.)

 -->
 

 <h5>DIV</h5>
�ٶ��� <div style="color: blue;">�� �¹����� Ÿ����<br>
�ٶ��� �� �¹����� Ÿ����<br>
�ٶ��� �� �¹����� Ÿ����<br>
�ٶ��� �� �¹���</div>�� Ÿ����<br>
�ٶ��� �� �¹����� Ÿ����<br>
�ٶ��� �� �¹����� Ÿ����<br>
�ٶ��� �� �¹����� Ÿ����<br>

 <h5>SPAN</h5>
�ٶ��� <span style="color: blue;">�� �¹����� Ÿ����<br>
�ٶ��� �� �¹����� Ÿ����<br>
�ٶ��� �� �¹����� Ÿ����<br>
�ٶ��� �� �¹���</span>�� Ÿ����<br>
�ٶ��� �� �¹����� Ÿ����<br>
�ٶ��� �� �¹����� Ÿ����<br>
�ٶ��� �� �¹����� Ÿ����<br>


<!-- c:out -���ϴ� ������ HTML�� ����Ѵ�. �±׸� ��ȿȭ�Ѵ�. -->
<c:set var ="txt" value="<span style='color:red;'>C:OUT!!</span>"/>


<ol>
<li>�׳� ��� : ${txt} </li>
<li> C:OUT ���� ��� :<c:out value="${txt }" escapeXml="true"/>  </li>
<li> C:OUT ���� ��� :<c:out value="${txt }" escapeXml="false"/>  </li>

</ol>

<hr>

<!-- c:forEach -�ݺ���. begin/end Ȥ�� items�� �̿��Ѵ�. -->
<c:forEach var="i" begin="1" end="10">

<b>Hello! ${i }</b> <br>
</c:forEach>

<hr>
<!-- c:forTokens - �����͸� split�ϸ鼭 �ݺ��ϴ� �ݺ���   
Token ��? ���ڿ� �ڸ���.   apple/bannana/  split, StringTokenizer

 -->
<c:forTokens items="red@tomato/orange,purple/yellow/blue/navy" delims="/@," var="color">

<div style="border:1px solid ${color};">
${color }color div
</div>
</c:forTokens>

<hr>

<!--  c:url - ��θ� ���� ���� �ϼ��� �� �ֵ��� �����ش�. -->
<c:url value="/abc/123/core.jsp"/> <br>


<c:url value="/abc/123/core.jsp">

	<c:param name="id" value="10"/>
	<c:param name="age" value="13"     />

</c:url>






</body>
</html>