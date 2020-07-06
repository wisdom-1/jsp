package chap01.tuto;

import java.util.HashMap;

public class HashMapTuto {

	//Map : Key �� Value�� �����͸� �����ϴ� Java�� �ڷᱸ�� (���̽㿡�� dictionary��� �θ���, �ڹٿ��� Map�̶� �θ���.)
	
	//HashMap :  Hash �˰����� �̿��� Map�� ������
	
	public static void main(String[]args) {
		
//		HashMap <Key, Value>
		
		HashMap<String, Integer> member = new HashMap<>();
		
		member.put("ȫ�浿", 13);
		member.put("��浿", 12);
		member.put("��浿", 112);
		System.out.println(member);
		
		//Map�� Key�� ���� Value�� ���� �� �ִ�.
		int age = member.get("ȫ�浿");
		System.out.println("ȫ�浿�� value �� :"+age);
		
		age = member.get("��浿");
		System.out.println("��浿�� value �� :"+age);
		
		java.util.Map<String,String[]> paraMap = new HashMap<>();
		
		paraMap.put("���", new String[] {"��ȭ����","���ǰ���","����"});
		paraMap.put("����", new String[] {"apple","kiwi","tomato","pineapple"});
		
		System.out.println(paraMap);
		
		//map.keySet() : Map�� keySet()�� ���� Key��θ� �̷���� Set�� ��ȯ�Ѵ�.
		
		System.out.println("member keySet : "+member.keySet());
		System.out.println("paraMap keySet : "+paraMap.keySet());
		
		//Key���� �̿��� ������ ��� �ѹ��� ���� �� �ִ�.
		for(String name : member.keySet()) {
			System.out.printf("%s : %d\n", name, member.get(name));
		}



		 //paraMap�� ��� ��̿� ��� ������ ����غ�����.
		System.out.println("��� ��̿� ��� ���� ����ϱ�");
		System.out.println(paraMap.keySet());
		 
		 //paraMap<String, String[]> : Key�� Ÿ���� String, ���� Ÿ���� String[]
		 for(String key : paraMap.keySet()) {
			 //get(key)�� ���� ���� �������� String[]�� ���´�.
			 //������ �ϳ�, ��̰� �ϳ�
			 String[] valueArray = paraMap.get(key);

			 //���� �迭��ŭ �ݺ��ϸ� �ϳ��� ����Ѵ�.
			 for (int i=0; i<valueArray.length; ++i) {
				 System.out.println(valueArray[i]);
			 }
		 }
		 
//		 
//		 System.out.println(paraMap.get("����"));
//		 System.out.println(paraMap.get("���"));
//		 
//		 String[] fruits = paraMap.get("����");
//		 String[] hobbies = paraMap.get("���");
//		 
//		 for (int i =0; i < fruits.length; ++i) {
//			 System.out.println(fruits[i]);
//		 }
//		 for (int i =0; i < hobbies.length; ++i) {
//			 System.out.println(hobbies[i]);
//		 }
//		 
		 
		 
		 
		 
		 
		 //paraMap�� ��� ��̿� ��� ������ ����غ�����.
		 int[] numbers = {1, 2, 3, 4, 5, 6};

		 for( int i = 1 ;  i <= numbers.length  ; i++) {
			 System.out.print("["+i+"]");
			 System.out.println(numbers[i-1]);
		 }
		 

		 //		 paraMap.put("���", new String[] {"��ȭ����","���ǰ���","����"}); �� ����غ���.
		 String[] pr = paraMap.get("���");
		 System.out.println("����� value �� :"+pr);

		 //		 System.out.println(paraMap.toString());
		 //		 
		 //		 getHashMapTuto().getName() + '@' + Integer.toHexString(hashCode())


		 
		 
		 
			 
			 
//		 for(numbers ; numbers.length[]<7 ;numbers.length++) {
//			 System.out.println(numbers);
//		 }
		 
		 
		 
	}


}
