package com.ukf.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ukf.demo.model.Employee;
import com.ukf.demo.repository.EmployeeRepository;


@Service
public class EmployeeService {

    @Autowired
    private EmployeeRepository employeeRepository;

//    public List<Employee> getAllEmployees() {
//        return employeeRepository.findAll();
//    }
//
//    public Employee getEmployeeById(int id) {
//        Optional<Employee> employee = employeeRepository.findById(id);
//        return employee.orElse(null);
//    }
//
//    public Employee createEmployee(Employee employee) {
//        return employeeRepository.save(employee);
//    }
//
//    public Employee updateEmployee(int id, Employee employee) {
//        employee.setEmp_id(id);
//        return employeeRepository.save(employee);
//    }
//
//    public void deleteEmployee(int id) {
//        employeeRepository.deleteById(id);
//    }
    public Optional<Employee> findByEmailAndPassword(String email, String password) {
        return employeeRepository.findByEmailAndPassword(email, password);
    }
    public void saveEmployee(Employee employee) {
        employeeRepository.save(employee);
    }

    // Method to get an employee by ID
    public Optional<Employee> getEmployeeById(int id) {
        return employeeRepository.findById(id);
    }

    // Method to get an employee by email
    public Optional<Employee> getEmployeeByEmail(String email) {
        return employeeRepository.findByEmail(email);
    }

    // Method to get an employee by email and password
    public Optional<Employee> getEmployeeByEmailAndPassword(String email, String password) {
        return employeeRepository.findByEmailAndPassword(email, password);
    }

    public List<Employee> getAllEmployees() {
        return employeeRepository.findAll();
    }
    public Optional<Employee> getEmployeeByEmails(String email) {
        return employeeRepository.findByEmail(email);
    }

    public void updateEmployee(Employee employee) {
        employeeRepository.save(employee);
    }
//    public EmployeeService(EmployeeRepository employeeRepository) {
//        this.employeeRepository = employeeRepository;
//    }

   
    }
    





