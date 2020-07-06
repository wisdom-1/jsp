package chap02.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TestControllerServlet")
public class TestControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public TestControllerServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	
			//�����̷�Ʈ�� WEB-INF�� �� �� �������?  �����̷�Ʈ : ����ڿ��� �� �ּҸ� �ٽ� ��û
//		response.sendRedirect("/WEB-INF/view/testView.jsp");			//�ȵ�. 
		
		response.sendRedirect("/chap02/test/jsp");			//�����̷�Ʈ�� ���� ��η� ���� ����.	//http://localhost:8080/chap02/test/jsp
		
		
		//request����� �̿��ؼ� �ٸ� ��ο� �ִ� �ֵ� �ҷ�����
//		request.getRequestDispatcher("/WEB-INF/view/testView.jsp")
//		.forward(request, response);
		
		
	}

		

}
