package chap01.beans;


// #   자바빈 객체 (JavaBean Object)
//	-  자바빈 스타일의 오브젝트를 의미한다.
//  -  JSP 에서 데이터를 편하게 주고받기 위한 객체의 표준을 의미한다.
//  -  자바빈 스타일로 생성해 놓은 객체는 JSP에서 자동으로 데이터를 매핑시켜준다.
//  -  getter/setter를 생성해 놓으면 EL이 자동으로 그것을 이용한다.


/*
	# 자바빈 객체의 관례
  
	1. 기본 생성자가 반드시 존재해야 한다.
	
   2. 자바빈 객체는 매개변수가 없는 기본 생성자를 반드시 갖고 있어야 한다.
  
   3. 속성의 접근 제어자는 private이어야 한다.
   
   4. 자바빈 객체의 멤버 변수들은 접근제어자를 private으로 설정하고
    	getter와 setter를 생성해놓아야 한다. 

 */

//  - 기본 생성자가 반드시 존재해야 한다.



public class Student {
	
	private String name;
	private int age;
	private int kor;
	private int eng;
	private int math;
	private double avg;
	
	public Student() {
		//테스트용 더미 데이터 생성
		name = " 김철수";
		age = 10;
		kor =9;
		eng = 5;
		math =30;
		calcAvg();
	}
	
	
	//getAvg를 안쓸것같아 추가했다.
	private void calcAvg() {
		double result = (kor+eng+math) /3.0;
		
		
		//소수점 자릿수 조절하기
		this.avg = Math.round(result * 10) /10.0;
	}
	
	
	// 우클릭 -> Source -> Generate Getters and Setters
//	getter/setter를 생성해놓으면 JSP와 EL이 자동으로 메서드를(이 객체를) 이용한다.
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
		calcAvg();
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
		calcAvg();
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
		calcAvg();
	}
	public double getAvg() {
		return avg;
	}
	
	

}
