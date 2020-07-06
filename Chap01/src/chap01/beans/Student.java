package chap01.beans;


// #   �ڹٺ� ��ü (JavaBean Object)
//	-  �ڹٺ� ��Ÿ���� ������Ʈ�� �ǹ��Ѵ�.
//  -  JSP ���� �����͸� ���ϰ� �ְ�ޱ� ���� ��ü�� ǥ���� �ǹ��Ѵ�.
//  -  �ڹٺ� ��Ÿ�Ϸ� ������ ���� ��ü�� JSP���� �ڵ����� �����͸� ���ν����ش�.
//  -  getter/setter�� ������ ������ EL�� �ڵ����� �װ��� �̿��Ѵ�.


/*
	# �ڹٺ� ��ü�� ����
  
	1. �⺻ �����ڰ� �ݵ�� �����ؾ� �Ѵ�.
	
   2. �ڹٺ� ��ü�� �Ű������� ���� �⺻ �����ڸ� �ݵ�� ���� �־�� �Ѵ�.
  
   3. �Ӽ��� ���� �����ڴ� private�̾�� �Ѵ�.
   
   4. �ڹٺ� ��ü�� ��� �������� ���������ڸ� private���� �����ϰ�
    	getter�� setter�� �����س��ƾ� �Ѵ�. 

 */

//  - �⺻ �����ڰ� �ݵ�� �����ؾ� �Ѵ�.



public class Student {
	
	private String name;
	private int age;
	private int kor;
	private int eng;
	private int math;
	private double avg;
	
	public Student() {
		//�׽�Ʈ�� ���� ������ ����
		name = " ��ö��";
		age = 10;
		kor =9;
		eng = 5;
		math =30;
		calcAvg();
	}
	
	
	//getAvg�� �Ⱦ��Ͱ��� �߰��ߴ�.
	private void calcAvg() {
		double result = (kor+eng+math) /3.0;
		
		
		//�Ҽ��� �ڸ��� �����ϱ�
		this.avg = Math.round(result * 10) /10.0;
	}
	
	
	// ��Ŭ�� -> Source -> Generate Getters and Setters
//	getter/setter�� �����س����� JSP�� EL�� �ڵ����� �޼��带(�� ��ü��) �̿��Ѵ�.
	
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
