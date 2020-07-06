package chap01.util;

import java.text.SimpleDateFormat;
import java.util.Date;

import jdk.management.resource.internal.inst.SimpleAsynchronousFileChannelImplRMHooks;

public class Shortcuts {

	// ���߿� ���ϰ� ���� ���� ������ ���� �ڹ� �Լ� ���� -> ���߿� html���� ������ �� �� ����
	public static String getCurrentTime(String format) {
		
		SimpleDateFormat fmt = new SimpleDateFormat(format);
		
//new Date();
			return fmt.format(new Date());
	
	}
	
	
	//������ �Լ� ���� -> Servlet�� jsp ���Ͽ��� �� �� �ְ�.
	public static String getHtmlGugudan() {
		StringBuilder gugudan = new StringBuilder();
		
		for (int dan =2;dan <=9; ++dan) {
			gugudan.append("<h3>" +dan+"<h3>");
			
			for (int gop =1; gop <=9; ++gop) {
				
				gugudan.append(String.format("<p>%d X %d = %d</p>",dan,gop,dan*gop));
			}
			System.out.println(dan+"��");
		}
		return gugudan.toString();
	}
	
	
	
}