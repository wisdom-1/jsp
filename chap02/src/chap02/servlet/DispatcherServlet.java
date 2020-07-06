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
	//���ο� URL�� ���� ������ web.xml�� ����ϱ� �Ⱦ ���� ����
	
	private Map<String, CommandHandler> cmdMap = new HashMap<>();
// ctrl+shift+o ������ import���ֱ�


	@Override
	public void init() throws ServletException {
		// init() : Servlet�� ���� ������ �� ���� ���� ȣ��Ǵ� �Լ�
		System.out.println("init() ȣ���");
		
		cmdMap.put("/join", new JoinHandler());
		cmdMap.put("/login", new LoginHandler());


	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		//  service()  : ��û�� ������ �������(GET���, POST��� �������) ������ ȣ��Ǵ� �޼ҵ�
		//doGet, doPost, doPost...������ ������ ���� ó���� �� �ִ� �޼���

		System.out.println("service() ȣ���");
		req.setCharacterEncoding("euc-kr");

		//����
		String cmd = req.getRequestURI().replace("/chap02/mvc/","/");
		System.out.println("����ڰ� ���� ������ : "+cmd);
		
		
		
		
//	cmd�� join�̸� join�� ó��, cmd�� login�̸� login�� ó��
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
		
		
		//cmd�� ~�� ~�� ó��.  ex)  cmd�� join�̸� join�� ó��, cmd�� login�̸� login�� ó��
		//���⼭ /mvc/*�� ��� ó���� ������ ���� ������,
		//		�ҽ� �ڵ带 �����ϴ� ���� �������� ���鿡�� ����.
		
		
//		System.out.println("�������� ���ؽ�Ʈ ��� : " +req.getContextPath());	//req.getContextPath() :
//		
//		System.out.println("����ڰ� ��û�� ��� :" + req.getRequestURI());
//		System.out.println("����ڰ� ��û�� ��� :" + req.getMethod());	//����ڰ� ��û�� ��� �� req.getMethod() �� �� �� �ִ�.
//		System.out.println("����ڰ� ��û�� Query :" + req.getQueryString());	
//		System.out.println("������� IP �ּ� :" + req.getRemoteAddr());	
//		
//		System.out.println("��û ����� : "+ req.getHeaderNames());
//		System.out.println("��û �Ķ���͵� : " + req.getParameterNames());
//		System.out.println("��û�� �Ǹ� Attribute �� : " + req.getAttributeNames());
		
		
		
		//getParameter(name), getAttribute(name) , getHeader(name)

		
		

		//			super.service() : ���� service�� ����
		//			- ��û�� method�� Ȯ���ϰ� �˸��� do�޼��带   ȣ�����ִ� ����
		//			- ex: Get��� ��û�̶�� doGet�� ȣ��
//		super.service(req, resp);
		
		
		

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		System.out.println("doGet() ȣ���");
//						super.doGet(req, resp);
	}

}
