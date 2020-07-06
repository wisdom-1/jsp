package chap02.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap02.controller.LoginController;

public class LoginHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// <% %>에서 처리하던 것을 이곳에서 전부 처리한다.		
		LoginController controller = new LoginController();
		
		// 똑같은 url로 들어온 요청이지만 method에 따라 요청을 다르게 처리하기
		switch (req.getMethod()) {
		case "GET":
			return controller.loginForm(req, resp);			
		case "POST":
			return controller.loginCheck(req, resp);			
		default:
			// forward로 보내고 싶은 페이지의 위치를 리턴한다
			return "/WEB-INF/view/mvc/login.jsp";
		}
	}

}




