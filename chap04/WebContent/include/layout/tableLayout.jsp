<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>table�� ���̾ƿ� ����</title>
</head>
<body>

<table width="80%" height ="800" border="1">
<tr>
	<td colspan="2" height="80">
		<jsp:include page="./module/title.jsp"></jsp:include>
	</td>
</tr>
<tr>
	<td width="200" height="500">  
	<jsp:include page="./module/nav.jsp"></jsp:include> </td>
	<td>CONTENT
	<!--  include�� �̿��� DB���� ������ ������ ������ -->
	<jsp:include page="/login/login.jsp"></jsp:include>
	<jsp:include page="./module/indexdb.jsp"></jsp:include>
	</td>
</tr>

<tr>
	<td colspan="2" height="80">
	<jsp:include page="./module/foot.jsp"></jsp:include>
	BOTTOM
	</td>

</tr>	
	



</table>



</body>
</html>