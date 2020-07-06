package chap01.util;

import java.text.SimpleDateFormat;
import java.util.Date;

import jdk.management.resource.internal.inst.SimpleAsynchronousFileChannelImplRMHooks;

public class Shortcuts {

	// 나중에 편하게 쓰기 위해 정의해 놓은 자바 함수 예시 -> 나중에 html에서 가져다 쓸 수 있음
	public static String getCurrentTime(String format) {
		
		SimpleDateFormat fmt = new SimpleDateFormat(format);
		
//new Date();
			return fmt.format(new Date());
	
	}
	
	
	//구구단 함수 생성 -> Servlet과 jsp 파일에서 쓸 수 있게.
	public static String getHtmlGugudan() {
		StringBuilder gugudan = new StringBuilder();
		
		for (int dan =2;dan <=9; ++dan) {
			gugudan.append("<h3>" +dan+"<h3>");
			
			for (int gop =1; gop <=9; ++gop) {
				
				gugudan.append(String.format("<p>%d X %d = %d</p>",dan,gop,dan*gop));
			}
			System.out.println(dan+"단");
		}
		return gugudan.toString();
	}
	
	
	
}