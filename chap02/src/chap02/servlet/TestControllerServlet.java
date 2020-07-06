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
	
			//리다이렉트로 WEB-INF로 갈 수 있을까요?  리다이렉트 : 사용자에게 이 주소를 다시 요청
//		response.sendRedirect("/WEB-INF/view/testView.jsp");			//안됨. 
		
		response.sendRedirect("/chap02/test/jsp");			//리다이렉트는 지정 경로로 접근 가능.	//http://localhost:8080/chap02/test/jsp
		
		
		//request방식을 이용해서 다른 경로에 있는 애들 불러오기
//		request.getRequestDispatcher("/WEB-INF/view/testView.jsp")
//		.forward(request, response);
		
		
	}

		

}
