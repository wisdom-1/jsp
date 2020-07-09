<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Layout</title>
</head>
<body>

<table style="margin:auto;" width="80%" border="1">
<tr>
	<td colspan="2" height="80">
		<jsp:include page="./module/title.jsp"/>
	</td>
</tr>
<tr>
	<td width="100" height="500">
		<jsp:include page="./module/nav.jsp"/>
	</td>
	<td>
		<!-- include를 이용해 DB에서 가져온 정보를 띄워보세요 -->
		CONTENT
	</td>
</tr>
<tr>
	<td colspan="2" height="80">
		<jsp:include page="./module/foot.jsp"/>
	</td>
</tr>
</table>

</body>
</html>