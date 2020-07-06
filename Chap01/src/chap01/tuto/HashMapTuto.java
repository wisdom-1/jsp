package chap01.tuto;

import java.util.HashMap;

public class HashMapTuto {

	//Map : Key 와 Value로 데이터를 저장하는 Java의 자료구조 (파이썬에선 dictionary라고 부르고, 자바에선 Map이라 부른다.)
	
	//HashMap :  Hash 알고리즘을 이용해 Map을 구현함
	
	public static void main(String[]args) {
		
//		HashMap <Key, Value>
		
		HashMap<String, Integer> member = new HashMap<>();
		
		member.put("홍길동", 13);
		member.put("고길동", 12);
		member.put("김길동", 112);
		System.out.println(member);
		
		//Map은 Key를 통해 Value를 꺼낼 수 있다.
		int age = member.get("홍길동");
		System.out.println("홍길동의 value 값 :"+age);
		
		age = member.get("김길동");
		System.out.println("김길동의 value 값 :"+age);
		
		java.util.Map<String,String[]> paraMap = new HashMap<>();
		
		paraMap.put("취미", new String[] {"영화보기","음악감상","독서"});
		paraMap.put("과일", new String[] {"apple","kiwi","tomato","pineapple"});
		
		System.out.println(paraMap);
		
		//map.keySet() : Map은 keySet()을 통해 Key들로만 이루어진 Set을 반환한다.
		
		System.out.println("member keySet : "+member.keySet());
		System.out.println("paraMap keySet : "+paraMap.keySet());
		
		//Key들을 이용해 값들을 모두 한번씩 꺼낼 수 있다.
		for(String name : member.keySet()) {
			System.out.printf("%s : %d\n", name, member.get(name));
		}



		 //paraMap의 모든 취미와 모든 과일을 출력해보세요.
		System.out.println("모든 취미와 모든 과일 출력하기");
		System.out.println(paraMap.keySet());
		 
		 //paraMap<String, String[]> : Key의 타입은 String, 값의 타입은 String[]
		 for(String key : paraMap.keySet()) {
			 //get(key)를 통해 값을 가져오면 String[]이 나온다.
			 //과일이 하나, 취미가 하나
			 String[] valueArray = paraMap.get(key);

			 //나온 배열만큼 반복하며 하나씩 출력한다.
			 for (int i=0; i<valueArray.length; ++i) {
				 System.out.println(valueArray[i]);
			 }
		 }
		 
//		 
//		 System.out.println(paraMap.get("과일"));
//		 System.out.println(paraMap.get("취미"));
//		 
//		 String[] fruits = paraMap.get("과일");
//		 String[] hobbies = paraMap.get("취미");
//		 
//		 for (int i =0; i < fruits.length; ++i) {
//			 System.out.println(fruits[i]);
//		 }
//		 for (int i =0; i < hobbies.length; ++i) {
//			 System.out.println(hobbies[i]);
//		 }
//		 
		 
		 
		 
		 
		 
		 //paraMap의 모든 취미와 모든 과일을 출력해보세요.
		 int[] numbers = {1, 2, 3, 4, 5, 6};

		 for( int i = 1 ;  i <= numbers.length  ; i++) {
			 System.out.print("["+i+"]");
			 System.out.println(numbers[i-1]);
		 }
		 

		 //		 paraMap.put("취미", new String[] {"영화보기","음악감상","독서"}); 를 출력해보자.
		 String[] pr = paraMap.get("취미");
		 System.out.println("취미의 value 값 :"+pr);

		 //		 System.out.println(paraMap.toString());
		 //		 
		 //		 getHashMapTuto().getName() + '@' + Integer.toHexString(hashCode())


		 
		 
		 
			 
			 
//		 for(numbers ; numbers.length[]<7 ;numbers.length++) {
//			 System.out.println(numbers);
//		 }
		 
		 
		 
	}


}
