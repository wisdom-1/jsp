package chap02.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap02.bean.Member;
import chap02.controller.JoinController;

public class JoinHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// <% %>에서 처리하던 것을 이곳에서 전부 처리한다.
		
		JoinController controller = new JoinController();
		
		String method = req.getMethod();
		
		if (method.equalsIgnoreCase("get"))
			return controller.joinForm();
		else if (method.equalsIgnoreCase("post")) 
			return controller.register(new Member(req), req);
		else		
			return "/WEB-INF/view/form/join.jsp";
	}

}





