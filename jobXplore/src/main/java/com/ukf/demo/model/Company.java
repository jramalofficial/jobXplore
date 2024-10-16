package com.ukf.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
@Entity
public class Company {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
   	private int comp_id;
	private String comp_name;
	private String comp_email;
	private long contact_no;
	private String comp_location;
	private String password;
	
	
	public Company() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Company(int comp_id, String comp_name, String comp_email, long contact_no, String comp_location,String password) {
		super();
		this.comp_id = comp_id;
		this.comp_name = comp_name;
		this.comp_email = comp_email;
		this.contact_no = contact_no;
		this.comp_location = comp_location;
		this.password=password;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getComp_id() {
		return comp_id;
	}
	public void setComp_id(int comp_id) {
		this.comp_id = comp_id;
	}
	public String getComp_name() {
		return comp_name;
	}
	public void setComp_name(String comp_name) {
		this.comp_name = comp_name;
	}
	public String getComp_email() {
		return comp_email;
	}
	public void setComp_email(String comp_email) {
		this.comp_email = comp_email;
	}
	public long getContact_no() {
		return contact_no;
	}
	public void setContact_no(long contact_no) {
		this.contact_no = contact_no;
	}
	public String getComp_location() {
		return comp_location;
	}
	public void setComp_location(String comp_location) {
		this.comp_location = comp_location;
	}
	@Override
	public String toString() {
		return "Company [comp_id=" + comp_id + ", comp_name=" + comp_name + ", comp_email=" + comp_email
				+ ", contact_no=" + contact_no + ", comp_location=" + comp_location + ", password=" + password + "]";
	}
	
	
	

	
	
	

}
