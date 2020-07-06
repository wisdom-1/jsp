package chap02.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap02.controller.LoginController;

public class LoginHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// <% %>���� ó���ϴ� ���� �̰����� ���� ó���Ѵ�.		
		LoginController controller = new LoginController();
		
		// �Ȱ��� url�� ���� ��û������ method�� ���� ��û�� �ٸ��� ó���ϱ�
		switch (req.getMethod()) {
		case "GET":
			return controller.loginForm(req, resp);			
		case "POST":
			return controller.loginCheck(req, resp);			
		default:
			// forward�� ������ ���� �������� ��ġ�� �����Ѵ�
			return "/WEB-INF/view/mvc/login.jsp";
		}
	}

}




