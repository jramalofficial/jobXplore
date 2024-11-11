package com.ukf.demo.service;

import com.ukf.demo.model.EmployeeJob;
import com.ukf.demo.repository.EmployeeJobRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EmployeeJobService {

    @Autowired
    private EmployeeJobRepository employeeJobRepository;

    // Save or update an employee job
    public void saveEmployeeJob(EmployeeJob employeeJob) {
        employeeJobRepository.save(employeeJob);
    }
    
    // Get employee job by ID
    public Optional<EmployeeJob> getEmployeeJobById(int id) {
        return employeeJobRepository.findById(id);
    }

    // Get all employee jobs
    public List<EmployeeJob> getAllEmployeeJobs() {
        return employeeJobRepository.findAll();
    }
    public Optional<EmployeeJob> getEmployeeJobByEmail(String email) {
        return employeeJobRepository.findByEmail(email);
    }

    public void updateEmployeeJob(EmployeeJob employeeJob) {
        employeeJobRepository.save(employeeJob);
    }
    
    public EmployeeJobService(EmployeeJobRepository employeeJobRepository) {
        this.employeeJobRepository = employeeJobRepository;
    }
    public Optional<EmployeeJob> findByEmail(String email) {
        return employeeJobRepository.findByEmail(email);
    }
   
    }
  

