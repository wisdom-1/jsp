<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
// 사용자에게 전달받은 요청을 해석할 때 사용할 charset을 설정한다.
	request.setCharacterEncoding("EUC-KR");


//	request의 요청을 해석하는 방식을 수정해도 GET방식 요청은 여전히 한글이 깨진다.

// GET 방식은 주소값(URI)에 실려서 도착하게 되는데
// URI의 인코딩 방식은 Apache/Tomcat에서 결정하기 때문이다.
// Apache/Tomcat에  설정된 기본값은 UTF-8 이다.


//    <Connector 어쩌고 저쩌고 8080어쩌고 저쩌고  URIEncoding="EUC-KR"   />를 추가하면
// 		URI를 EUC-KR 방식으로 해석하게 된다.
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>control</title>
</head>

<body>

TEST:
${param.test };

</body>
</html>