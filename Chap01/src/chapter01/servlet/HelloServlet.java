package chapter01.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap01.util.Shortcuts;



@WebServlet("/Hi")	//링크를 걸어놓는 작업 : 맵핑, 접속할 수 있는 주소
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public HelloServlet() {
        super();
  
    }
    
    private int add(int A, int B) {
    	return A+B;
    }
    
    
    
    

	// Get 방식의 요청 : 웹 브라우저 주소창에 직접 주소를 쳐서 들어오는 방식
    
    //클라이언트로부터 Get 방식요청이 도착하면 자동으로  Servlet의 doGet을 실행한다.
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// 매개변수 HttpServletRequest request 객체에 요청 정보가 실려 온다.
		// 매개변수 HttpServletResponse response 객체에 응답할 내용을 실어 보내야 한다.
		
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setCharacterEncoding("EUC-KR");
		
//		response.getWriter()
//		.append("<h1 style='color: blue;'>Hello Servlet!!</h1>")
//		.append("<p style='color: red;'>여기는"
//				+ "<br> 처음 만든 페이지 입니다.</p>");
		
		// Servlet이란? Java 문법을 활용하여 HTML 코드를 생성하는 프레임워크
//			- 서블릿만으로는 HTML 코드를 작성하기 불편하다는 문제점
//			- 소스가 매우 지저분하다.
		
		PrintWriter out = response.getWriter();

		out.print("<h1 style='color: blue;'>Hello Servlet!!</h1>");
		out.print("<p style='color: red;'>여기는 처음 만든 페이지 입니다.</p>");
		out.print("<!-- ol : ordered list tag -->");
		out.print("<ol>");

		for (int i =0; i<10; ++i)
			out.print("<li> 반복되는 내용" + add(i,99)+ "</li>");
		out.print("</ol>");


		//html은 다른 패키지에 있는 함수 불러오는게 안되는건가? 그렇다.
		out.print("<div id = 'time'> 현재 시간 : " + Shortcuts.getCurrentTime("yyyy년 MM월 dd일/hh:mm:ss" ) +"</div>" );
		out.print("<style > #time {font-size : 1.5em;}</style>  ");



	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
