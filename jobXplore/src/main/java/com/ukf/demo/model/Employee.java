package com.ukf.demo.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Employee {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int emp_id;

    @Column(nullable = false)
    private String emp_name;

    @Column(unique = true, nullable = false)
    private String email;

    @Column(nullable = false)
    private long phone_no;

    private String location;

    private String password;

    public Employee() {
        super();
    }

    public Employee(String emp_name, String email, long phone_no, String location, String password) {
        super();
        this.emp_name = emp_name;
        this.email = email;
        this.phone_no = phone_no;
        this.location = location;
        this.password = password;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Employee [emp_id=" + emp_id + ", emp_name=" + emp_name + ", email=" + email + ", phone_no=" + phone_no
                + ", location=" + location + ", password=" + password + "]";
    }
}