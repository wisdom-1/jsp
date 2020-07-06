package chap03.dto;

import java.sql.ResultSet;

//EMPNO    NOT NULL NUMBER(4)    
//ENAME             VARCHAR2(10) 
//JOB               VARCHAR2(9)  
//MGR               NUMBER(4)    
//HIREDATE          DATE         
//SAL               NUMBER(7,2)  
//COMM              NUMBER(7,2)  
//DEPTNO            NUMBER(2)    


import java.util.Date;


public class Emp {

	private int empno;
	private String ename;
	private String job;
	private int mgr;
	private String hiredate;
	private double sal;
	private double comm;
	private int deptno;

	
	
	
	public int getEmpno() {
		return empno;
	}




	public void setEmpno(int empno) {
		this.empno = empno;
	}




	public String getEname() {
		return ename;
	}




	public void setEname(String ename) {
		this.ename = ename;
	}




	public String getJob() {
		return job;
	}




	public void setJob(String job) {
		this.job = job;
	}




	public int getMgr() {
		return mgr;
	}




	public void setMgr(int mgr) {
		this.mgr = mgr;
	}




	public String getHiredate() {
		return hiredate;
	}




	public void setHiredate(String hiredate) {
		this.hiredate = hiredate;
	}




	public double getSal() {
		return sal;
	}




	public void setSal(double sal) {
		this.sal = sal;
	}




	public double getComm() {
		return comm;
	}




	public void setComm(double comm) {
		this.comm = comm;
	}




	public int getDeptno() {
		return deptno;
	}




	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}


	
}
