package com.ukf.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ukf.demo.model.Employee;



public interface EmployeeRepository extends JpaRepository<Employee, Integer>{
	

}
