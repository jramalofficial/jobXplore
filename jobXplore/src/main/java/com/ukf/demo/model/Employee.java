package com.ukf.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
@Entity
public class Employee {
	@Id
	private int emp_id;
	private String emp_name;
	private String email;
	private long phone_no;
	private String location;
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Employee(int emp_id, String emp_name, String email, long phone_no,String location) {
		super();
		this.emp_id = emp_id;
		this.emp_name = emp_name;
		this.email = email;
		this.location=location;
		this.phone_no = phone_no;
	}
	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPhone_no() {
		return phone_no;
	}
	public void setPhone_no(long phone_no) {
		this.phone_no = phone_no;
	}
	
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	@Override
	public String toString() {
		return "Employee [emp_id=" + emp_id + ", emp_name=" + emp_name + ", email=" + email + ", phone_no=" + phone_no
				+ ", location=" + location + "]";
	}
	
	
	
}
