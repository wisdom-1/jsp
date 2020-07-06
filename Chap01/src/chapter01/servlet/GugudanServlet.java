package chapter01.servlet;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap01.util.Gugudan;
import chap01.util.Shortcuts;


@WebServlet("/GugudanServlet")
public class GugudanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public GugudanServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		//Servlet �������� �޼ҵ带 ���� �ʿ� ����. 
		//������ ����غ�����
		 response.setCharacterEncoding("EUC-KR");
		 
		 PrintWriter out = response.getWriter();
	
		 //String gugudan = Shortcuts.getHtmlGugudan();
		 //System.out.println(gugudan);
		 
		 out.print("<html><head></head></body>");
		 
		 out.print(Shortcuts.getHtmlGugudan());
		 
		 out.print("</body> </html>");
		 
		 //response.getWriter().append(Shortcuts.getHtmlGugudan());
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
