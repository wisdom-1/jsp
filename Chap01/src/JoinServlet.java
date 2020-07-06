

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/JoinServlet")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public JoinServlet() {
        super();
    }

    
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
    	response.setCharacterEncoding("EUC-KR");
		response.getWriter().append("<html><h1>GET��� ��û�� �Խ��ϴ�.</h1></html>");
    }

    
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("m_name");
		String age = request.getParameter("m_age");
		String email = request.getParameter("m_email");
		
		//request : Ŭ���̾�Ʈ�� ���� ������  �� ������ ���� ��ü
		// response : ���� �������� ������ �� �����ϴ� ��ü
		
		response.setCharacterEncoding("EUC-KR");
		
		response.getWriter()
		.append("<html><h3>POST��� ��û�� �Խ��ϴ�.</h3>")
		.append("�̸� : " + name + "<br>")
		.append("���� : " + age + "<br>")
		.append("�̸��� : " + email + "<br></html>");

	}
}
