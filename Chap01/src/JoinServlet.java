

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
		response.getWriter().append("<html><h1>GET방식 요청이 왔습니다.</h1></html>");
    }

    
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("m_name");
		String age = request.getParameter("m_age");
		String email = request.getParameter("m_email");
		
		//request : 클라이언트가 보낸 데이터  및 정보를 가진 객체
		// response : 응답 페이지를 생성한 뒤 응답하는 객체
		
		response.setCharacterEncoding("EUC-KR");
		
		response.getWriter()
		.append("<html><h3>POST방식 요청이 왔습니다.</h3>")
		.append("이름 : " + name + "<br>")
		.append("나이 : " + age + "<br>")
		.append("이메일 : " + email + "<br></html>");

	}
}
