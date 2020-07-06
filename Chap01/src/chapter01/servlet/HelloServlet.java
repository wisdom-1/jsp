package chapter01.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap01.util.Shortcuts;



@WebServlet("/Hi")	//��ũ�� �ɾ���� �۾� : ����, ������ �� �ִ� �ּ�
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public HelloServlet() {
        super();
  
    }
    
    private int add(int A, int B) {
    	return A+B;
    }
    
    
    
    

	// Get ����� ��û : �� ������ �ּ�â�� ���� �ּҸ� �ļ� ������ ���
    
    //Ŭ���̾�Ʈ�κ��� Get ��Ŀ�û�� �����ϸ� �ڵ�����  Servlet�� doGet�� �����Ѵ�.
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// �Ű����� HttpServletRequest request ��ü�� ��û ������ �Ƿ� �´�.
		// �Ű����� HttpServletResponse response ��ü�� ������ ������ �Ǿ� ������ �Ѵ�.
		
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setCharacterEncoding("EUC-KR");
		
//		response.getWriter()
//		.append("<h1 style='color: blue;'>Hello Servlet!!</h1>")
//		.append("<p style='color: red;'>�����"
//				+ "<br> ó�� ���� ������ �Դϴ�.</p>");
		
		// Servlet�̶�? Java ������ Ȱ���Ͽ� HTML �ڵ带 �����ϴ� �����ӿ�ũ
//			- ���������δ� HTML �ڵ带 �ۼ��ϱ� �����ϴٴ� ������
//			- �ҽ��� �ſ� �������ϴ�.
		
		PrintWriter out = response.getWriter();

		out.print("<h1 style='color: blue;'>Hello Servlet!!</h1>");
		out.print("<p style='color: red;'>����� ó�� ���� ������ �Դϴ�.</p>");
		out.print("<!-- ol : ordered list tag -->");
		out.print("<ol>");

		for (int i =0; i<10; ++i)
			out.print("<li> �ݺ��Ǵ� ����" + add(i,99)+ "</li>");
		out.print("</ol>");


		//html�� �ٸ� ��Ű���� �ִ� �Լ� �ҷ����°� �ȵǴ°ǰ�? �׷���.
		out.print("<div id = 'time'> ���� �ð� : " + Shortcuts.getCurrentTime("yyyy�� MM�� dd��/hh:mm:ss" ) +"</div>" );
		out.print("<style > #time {font-size : 1.5em;}</style>  ");



	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
