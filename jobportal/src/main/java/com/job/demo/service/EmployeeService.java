package com.job.demo.service;

import com.job.demo.model.Employee;
import com.job.demo.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class EmployeeService {
    @Autowired
    private EmployeeRepository employeeRepository;

    public Optional<Employee> findByEmailAndPassword(String email, String password) {
        return employeeRepository.findByEmailAndPassword(email, password);
    }
    

    public void save(Employee employee) {
        employeeRepository.save(employee);
    }

    public Optional<Employee> findByEmail(String email) {
        return employeeRepository.findByEmail(email);
    }

    public Optional<Employee> findById(int id) {
        return employeeRepository.findById(id);  // Fetch employee by ID
    }

    // Update employee details
    public void updateEmployee(Employee updatedEmployee) {
        Optional<Employee> existingEmployeeOpt = employeeRepository.findById(updatedEmployee.getId());

        if (existingEmployeeOpt.isPresent()) {
            Employee existingEmployee = existingEmployeeOpt.get();
            // Update the fields
            existingEmployee.setName(updatedEmployee.getName());
            existingEmployee.setEmail(updatedEmployee.getEmail());
            existingEmployee.setJobTitle(updatedEmployee.getJobTitle());
            existingEmployee.setExperience(updatedEmployee.getExperience());
            existingEmployee.setPhoneNo(updatedEmployee.getPhoneNo());
            existingEmployee.setLocation(updatedEmployee.getLocation());
            // Save the updated employee back to the repository
            employeeRepository.save(existingEmployee);
        }
    }
    
//    public Optional<Employee> findById(Long id) {
//        return employeeRepository.findById(id); // Fetch the employee by ID
    //}
}
