package chap01.tuto;

import java.util.Random;

public class Apple {

	static String[] colors = {"red", "green", "yellow", "purple", "pink"};
	static String[] locations= {"����", "���", "����", "��û"};
	
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
	
	// '����� ���ڿ��� ǥ���Ǿ�� �� �� �̷��� �������� ���ڴ�'�� �����Ѵ� 
	@Override
	public String toString() {		
		return String.format("<ul>"
				+ "<li>ũ��=%d</li> "
				+ "<li>����=%d</li> "
				+ "<li>��=%s</li> "
				+ "<li>����=%s</li></ul>",
				size, weight, colors[color], locations[loc]);
	}

	public static void main(String[] args) {		
		// println() : ��ü�� toString()�� ȣ���Ͽ� �� ����� �ֿܼ� ����Ѵ�.
		// �� toString()�� Object�� �޼����̱� ������ ��� ��ü�� ������ �ִ�
		System.out.println(new Apple());
	}
}










