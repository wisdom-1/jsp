package chap02.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap02.handler.CommandHandler;
import chap02.handler.JoinHandler;
import chap02.handler.LoginHandler;

public class DispatcherServlet extends HttpServlet {
	//새로운 URL이 생길 때마다 web.xml에 등록하기 싫어서 만든 서블릿
	
	private Map<String, CommandHandler> cmdMap = new HashMap<>();
// ctrl+shift+o 누르고 import해주기


	@Override
	public void init() throws ServletException {
		// init() : Servlet이 새로 생성될 때 가장 먼저 호출되는 함수
		System.out.println("init() 호출됨");
		
		cmdMap.put("/join", new JoinHandler());
		cmdMap.put("/login", new LoginHandler());


	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		//  service()  : 요청의 종류와 상관없이(GET방식, POST방식 상관없이) 무조건 호출되는 메소드
		//doGet, doPost, doPost...등으로 나누기 전에 처리할 수 있는 메서드

		System.out.println("service() 호출됨");
		req.setCharacterEncoding("euc-kr");

		//로직
		String cmd = req.getRequestURI().replace("/chap02/mvc/","/");
		System.out.println("사용자가 원한 페이지 : "+cmd);
		
		
		
		
//	cmd가 join이면 join을 처리, cmd가 login이면 login을 처리
		String viewPage = null;
		try {
			viewPage = cmdMap.get(cmd).process(req,resp);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		if(viewPage ==null) {
			req.getRequestDispatcher("/WEB-INF/error/404.jsp").forward(req, resp);
			
		}else {
			req.getRequestDispatcher(viewPage).forward(req, resp);
		}
		
		
		//cmd가 ~면 ~를 처리.  ex)  cmd가 join이면 join을 처리, cmd가 login이면 login을 처리
		//여기서 /mvc/*의 모든 처리를 진행할 수도 있지만,
		//		소스 코드를 분할하는 것이 유지보수 측면에서 좋다.
		
		
//		System.out.println("웹서버의 컨텍스트 경로 : " +req.getContextPath());	//req.getContextPath() :
//		
//		System.out.println("사용자가 요청한 경로 :" + req.getRequestURI());
//		System.out.println("사용자가 요청한 방식 :" + req.getMethod());	//사용자가 요청한 방식 은 req.getMethod() 로 알 수 있다.
//		System.out.println("사용자가 요청한 Query :" + req.getQueryString());	
//		System.out.println("사용자의 IP 주소 :" + req.getRemoteAddr());	
//		
//		System.out.println("요청 헤더들 : "+ req.getHeaderNames());
//		System.out.println("요청 파라미터들 : " + req.getParameterNames());
//		System.out.println("요청에 실린 Attribute 들 : " + req.getAttributeNames());
		
		
		
		//getParameter(name), getAttribute(name) , getHeader(name)

		
		

		//			super.service() : 원래 service의 동작
		//			- 요청의 method를 확인하고 알맞은 do메서드를   호출해주는 역할
		//			- ex: Get방식 요청이라면 doGet을 호출
//		super.service(req, resp);
		
		
		

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		System.out.println("doGet() 호출됨");
//						super.doGet(req, resp);
	}

}
