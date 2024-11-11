package com.ukf.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class EmployeeJob {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id; // Unique identifier for each job entry

    private String name; // Employee's name
    private String job_title; // Title of the job
    private String location; // Job location
    private int experience; // Years of experience
    private long phone_no; // Employee's phone number
    private String email; // Employee's email

    // Default constructor
    public EmployeeJob() {
        super();
    }

    public EmployeeJob(String name, String job_title, String location, int experience, long phone_no, String email) {
        super();
        this.name = name;
        this.job_title = job_title;
        this.location = location;
        this.experience = experience;
        this.phone_no = phone_no;
        this.email = email;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getJob_title() {
        return job_title;
    }

    public void setJob_title(String job_title) {
        this.job_title = job_title;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getExperience() {
        return experience;
    }

    public void setExperience(int experience) {
        this.experience = experience;
    }

    public long getPhone_no() {
        return phone_no;
    }

    public void setPhone_no(long phone_no) {
        this.phone_no = phone_no;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
        
    }
}