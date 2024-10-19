package com.job.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class CompanyJob {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    public CompanyJob(String jobTitle, String jobDescription, String companyName, String experience, String date,
			String phoneNumber, String email) {
		super();
		this.jobTitle = jobTitle;
		this.jobDescription = jobDescription;
		this.companyName = companyName;
		this.experience = experience;
		this.date = date;
		this.phoneNumber = phoneNumber;
		this.email = email;
	}

	public CompanyJob() {
		super();
		// TODO Auto-generated constructor stub
	}

	private String jobTitle;
    private String jobDescription;
    private String companyName;
    private String experience;
    private String date;
    
    // New attributes
    private String phoneNumber;
    private String email;

    // Getters and Setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getJobDescription() {
        return jobDescription;
    }

    public void setJobDescription(String jobDescription) {
        this.jobDescription = jobDescription;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
