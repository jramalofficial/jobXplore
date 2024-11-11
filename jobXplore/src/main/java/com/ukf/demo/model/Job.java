package com.ukf.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
@Entity
public class Job {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long job_id;

    private String job_title;
    private String job_description;
    private String job_location;
    private String job_experience;
    private double salary;
	public Job() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Job( String job_title, String job_description, String job_location, double salary) {
		super();
		
		this.job_title = job_title;
		this.job_description = job_description;
		this.job_location = job_location;
		this.salary = salary;
	}
	public Long getJob_id() {
		return job_id;
	}
	
	public String getJob_experience() {
		return job_experience;
	}
	public void setJob_experience(String job_experience) {
		this.job_experience = job_experience;
	}
	public void setJob_id(Long job_id) {
		this.job_id = job_id;
	}
	public String getJob_title() {
		return job_title;
	}
	public void setJob_title(String job_title) {
		this.job_title = job_title;
	}
	public String getJob_description() {
		return job_description;
	}
	public void setJob_description(String job_description) {
		this.job_description = job_description;
	}
	public String getJob_location() {
		return job_location;
	}
	public void setJob_location(String job_location) {
		this.job_location = job_location;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	@Override
	public String toString() {
		return "Job [job_id=" + job_id + ", job_title=" + job_title + ", job_description=" + job_description
				+ ", job_location=" + job_location + ", job_experience=" + job_experience + ", salary=" + salary + "]";
	}

    
}
