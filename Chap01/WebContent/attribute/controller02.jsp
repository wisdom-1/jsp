<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
    
       <%
    //JSP �������� HTML�� JAVA������ ���ÿ� Ȱ���� �� ������, 
    //�ΰ����� ȥ���ϸ� �ڵ尡 ���������Ƿ� �� �κ����� �����Ͽ� ����Ѵ�.
    
    
    //1.  Ŭ���̾�Ʈ�� ��û�� �޾� ���� ������. (ó��, ����Ͻ� ����)
    String w_color = request.getParameter("word-color");
    String bg_color = request.getParameter("bg-color");
    
   //ó���� ���� �� forward �� �������� �����ϰ� ���� �����͸� Attribute�� ����Ѵ�.
   
   //Attribute��? �� ���� ���� ��ü�� �����͸�  Key:Value ���·� �Ǿ���� �� �ִ� ��.
   
	// Attribute �� ����� �� �ִ� ��ü : application > session > request > pageContext
											// (������ �� ������� �����Ѵ�.) 
		   request.setAttribute("w_color",w_color);
		   request.setAttribute("bg_color",bg_color);
    //���� �Ѱܹ��� ���� ���� �������� ó���� �̰��� ����
    // ex: ��û���� ����� ���̵�/��� �� ������ ������ �ִ� ���̵�/��� ����
    // ex: ��û���� ���ƿ� �˻��� �ش�˻���� ��ġ�ϴ� ������ �˻�.

    //--------------------------------------------

   /* 
    Java�� forward �ϱ� (Servlet���� ��� ����)
    RequestDispatcher dispatcher = request.getRespatcher("view/color.jsp");
    dispatcher.forward(request, response);
    */
   %>
    
    <!--  JSP�� forward �ϱ� -->
    <jsp:forward page="view/color.jsp">
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>