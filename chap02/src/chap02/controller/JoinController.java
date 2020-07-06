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
	
	// �Ű����� ������ �ٿ��� �ҽ��� ����ϰ� �ۼ��ϱ� ���� Bean��ü�� �̿��Ѵ�
	// Bean��ü�� �ַ� ��ó�� �����͸� �ְ�ޱ� ���� �̿��ϱ� ������ DTO��� �θ��⵵ �Ѵ�
	// (DTO: Data Transfer Object)
	public String register(Member mem, HttpServletRequest req) {
		// ������ ȸ���� ������ ���Ͽ� �����ϱ�
		// System.out.println("register���� ���������� �����߽��ϴ�");
		
		String path = req.getRealPath("/member");		
		System.out.println("���� ��� : " + path);
		
		// �̹� �ִ� ȸ������ �˻��غ���
		File memDir = new File(path);
		
		for (String filename : memDir.list()) {			
			String user_id = filename.substring(0, filename.indexOf(".mem"));
			
			if (user_id.equalsIgnoreCase(mem.getUser_id())) {
				System.out.printf("�ߺ��Ǵ� ȸ���� ã�� [%s]\n", user_id);
				
				req.setAttribute("result", "exist");				
				return "/WEB-INF/view/mvc/join_result.jsp";
			}			
		}				
		
		// ȸ�� ����ϱ�
		File new_mem = new File(path 
				+ "\\" 		
				+ mem.getUser_id() + ".mem");
		
		// try() : AutoClose interface�� ������ ��ü�� �ڵ����� �ݾ��ش� 
		try (FileWriter f_out = new FileWriter(new_mem, false)) {			
			f_out.append("�̸� : " + mem.getName() + "\n");
			f_out.append("ID : " + mem.getUser_id() + "\n");
			f_out.append("��й�ȣ : " + mem.getUser_pwd() + "\n");
			f_out.append("���� : " + mem.getBirthday() + "\n");
			f_out.append("������ : " + mem.getJoinDate() + "\n");
			f_out.append("������ ���� : " + mem.isMarketing() + "\n");			
			
		} catch (IOException e) {			
			e.printStackTrace();
		}
		
		req.setAttribute("result", "success");
		return "/WEB-INF/view/mvc/join_result.jsp";
	}
		
}






