package chap02.bean;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

public class Member {
	
	private int id;				//ȸ�� ��ȣ
	private String user_id;		// ���̵�
	private String user_pwd;	//���
	private String name;		//�̸�
	private Date joinDate;		//������
	private Date Birthday;		//����
	private boolean validate;		//��������
	private boolean marketing;		//������ ���� ����
	
	public Member() {}
	
	public Member(HttpServletRequest req) {
		this.user_id = req.getParameter("user_id");
		this.user_pwd = req.getParameter("user_pwd");
		this.name = req.getParameter("user_name");
		this.joinDate = new Date();		
		System.out.println(req.getParameter("birthday"));

		try {
			this.Birthday = new SimpleDateFormat("yyyy-MM-dd").parse(req.getParameter("Birthday"));
		} catch (ParseException e) {
			e.printStackTrace();
		}

		
		this.validate = false;
		this.marketing = req.getParameter("marketing") != null;		
		 
	}
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	public Date getBirthday() {
		return Birthday;
	}
	public void setBirthday(Date birthday) {
		Birthday = birthday;
	}
	
	public boolean isValidate() {
		return validate;
	}
	public void setValidate(boolean validate) {
		this.validate = validate;
	}
	public boolean isMarketing() {
		return marketing;
	}
	public void setMarketing(boolean marketing) {
		this.marketing = marketing;
	}







}
