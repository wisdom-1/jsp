package chap02.controller;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import chap02.bean.Member;

public class JoinController {

	public String joinForm() {		
		return "/WEB-INF/view/form/join.jsp";
	}	
	
	// 매개변수 개수를 줄여서 소스를 깔끔하게 작성하기 위해 Bean객체를 이용한다
	// Bean객체는 주로 이처럼 데이터를 주고받기 위해 이용하기 때문에 DTO라고 부르기도 한다
	// (DTO: Data Transfer Object)
	public String register(Member mem, HttpServletRequest req) {
		// 가입한 회원의 정보를 파일에 저장하기
		// System.out.println("register까지 성공적으로 도착했습니다");
		
		String path = req.getRealPath("/member");		
		System.out.println("실제 경로 : " + path);
		
		// 이미 있는 회원인지 검사해보기
		File memDir = new File(path);
		
		for (String filename : memDir.list()) {			
			String user_id = filename.substring(0, filename.indexOf(".mem"));
			
			if (user_id.equalsIgnoreCase(mem.getUser_id())) {
				System.out.printf("중복되는 회원을 찾음 [%s]\n", user_id);
				
				req.setAttribute("result", "exist");				
				return "/WEB-INF/view/mvc/join_result.jsp";
			}			
		}				
		
		// 회원 등록하기
		File new_mem = new File(path 
				+ "\\" 		
				+ mem.getUser_id() + ".mem");
		
		// try() : AutoClose interface가 구현된 객체를 자동으로 닫아준다 
		try (FileWriter f_out = new FileWriter(new_mem, false)) {			
			f_out.append("이름 : " + mem.getName() + "\n");
			f_out.append("ID : " + mem.getUser_id() + "\n");
			f_out.append("비밀번호 : " + mem.getUser_pwd() + "\n");
			f_out.append("생일 : " + mem.getBirthday() + "\n");
			f_out.append("가입일 : " + mem.getJoinDate() + "\n");
			f_out.append("마케팅 동의 : " + mem.isMarketing() + "\n");			
			
		} catch (IOException e) {			
			e.printStackTrace();
		}
		
		req.setAttribute("result", "success");
		return "/WEB-INF/view/mvc/join_result.jsp";
	}
		
}






