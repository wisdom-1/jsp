package chap02.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// url: /chap02/mvc/login
public class LoginController {

	public String loginForm(HttpServletRequest req, 
			HttpServletResponse resp) {
		// GET방식으로 왔을때는 로그인 form이 있는 JSP로 포워딩		
		return "/WEB-INF/view/form/login.jsp";
	}
	
	public String loginCheck(HttpServletRequest req, 
			HttpServletResponse resp) {
		// POST방식으로 왔을때는 올바른 로그인인지 체크 후 결과 페이지로 포워딩
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





