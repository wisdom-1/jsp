package chap02.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// url: /chap02/mvc/login
public class LoginController {

	public String loginForm(HttpServletRequest req, 
			HttpServletResponse resp) {
		// GET������� �������� �α��� form�� �ִ� JSP�� ������		
		return "/WEB-INF/view/form/login.jsp";
	}
	
	public String loginCheck(HttpServletRequest req, 
			HttpServletResponse resp) {
		// POST������� �������� �ùٸ� �α������� üũ �� ��� �������� ������
		String id = req.getParameter("user_id");
		String pass = req.getParameter("user_pwd");
		
		if (id.equals("admin") && pass.equals("1234")) {
			req.setAttribute("login", "success");
		} else {
			req.setAttribute("login", "fail");
		}
		
		return "/WEB-INF/view/mvc/result.jsp";
	}
	
}





