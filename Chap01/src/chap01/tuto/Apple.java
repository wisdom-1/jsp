package chap01.tuto;

import java.util.Random;

public class Apple {

	static String[] colors = {"red", "green", "yellow", "purple", "pink"};
	static String[] locations= {"서울", "경기", "강원", "충청"};
	
	int size;
	int weight;
	int color;
	int loc;
	
	public Apple() {
		Random r = new Random();
		size = r.nextInt(11) + 10;
		weight = r.nextInt(6) + 10;
		color = r.nextInt(colors.length);
		loc = r.nextInt(locations.length);
	}
	
	// '사과는 문자열로 표현되어야 할 때 이렇게 나왔으면 좋겠다'를 구현한다 
	@Override
	public String toString() {		
		return String.format("<ul>"
				+ "<li>크기=%d</li> "
				+ "<li>무게=%d</li> "
				+ "<li>색=%s</li> "
				+ "<li>지역=%s</li></ul>",
				size, weight, colors[color], locations[loc]);
	}

	public static void main(String[] args) {		
		// println() : 객체의 toString()을 호출하여 그 결과를 콘솔에 출력한다.
		// ※ toString()은 Object의 메서드이기 때문에 모든 객체가 가지고 있다
		System.out.println(new Apple());
	}
}










