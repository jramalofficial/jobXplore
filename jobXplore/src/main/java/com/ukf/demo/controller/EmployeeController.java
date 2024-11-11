package com.ukf.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ukf.demo.model.Company;
import com.ukf.demo.model.Employee;
import com.ukf.demo.model.Job;
import com.ukf.demo.service.EmployeeJobService;
import com.ukf.demo.service.EmployeeService;
import com.ukf.demo.service.JobService;

@RestController
//@RequestMapping("/employees")
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;


//	@GetMapping("/listemployees")
//	public List<Employee> getEmployees() {
//		return employeeService.getAllEmployees();
//	}
//	@GetMapping("/list")
//    public ModelAndView addEmployee() {
//        ModelAndView modelAndView = new ModelAndView("employee");
//        modelAndView.addObject("employee", new Employee());
//        return modelAndView;
//    }
	@PostMapping("/employeedetails")
    public ModelAndView loginEmployee(@RequestParam("comp_email") String email, 
                                       @RequestParam("password") String password) {
        
        // Check if the employee exists with the given email and password
        Optional<Employee> employee = employeeService.findByEmailAndPassword(email, password);

        if (employee.isPresent()) {
            // If login is successful, redirect to employee details page
            return new ModelAndView("redirect:/job");
        } else {
            // If login fails, show an error message and redirect to the login page
            ModelAndView mav = new ModelAndView("employeeLogin"); // Set the view to the same form page
            mav.addObject("employee", new Employee()); // Add a new employee object to the model
            mav.addObject("message", "Incorrect email or password"); // Add the error message to the model
            return mav;
        }
    }

   
	@GetMapping("/addEmployee")
 public ModelAndView addEmployee() {
     ModelAndView modelAndView = new ModelAndView("employeesignup");
     modelAndView.addObject("employee", new Employee());
     return modelAndView;
 }
	@GetMapping("/loginEmployee")
    public ModelAndView loginEmployee() {
        ModelAndView modelAndView = new ModelAndView("employeeLogin");
        modelAndView.addObject("employee", new Employee());
        return modelAndView;
    }
	
	 @PostMapping("/saveEmployee")
	    public ModelAndView saveEmployee(
	            @RequestParam("emp_name") String emp_name,
	            @RequestParam("email") String email,
	            @RequestParam("phone_no") long phone_no,
	            @RequestParam("location") String location,
	            @RequestParam("password") String password) {
	        
	        // Check if an employee with the provided email already exists
	        Optional<Employee> existingEmployee = employeeService.getEmployeeByEmail(email);

	        if (existingEmployee.isPresent()) {
	            // Show an error message if the employee already exists
	            ModelAndView mav = new ModelAndView("employeesignup"); // Set the view to the same form page
	            mav.addObject("employee", new Employee()); // Add a new employee object to the model
	            mav.addObject("message", "Account already exists with the email: " + email); // Add the error message to the model
	            return mav;
	        }

	        // Create a new employee if the email is not found
	        Employee employee = new Employee();
	        employee.setEmp_name(emp_name);
	        employee.setEmail(email);
	        employee.setPhone_no(phone_no);
	        employee.setLocation(location);
	        employee.setPassword(password); // Set the password

	        // Save the new employee
	        employeeService.saveEmployee(employee);

	        // Redirect after saving
	        return new ModelAndView("redirect:/loginEmployee"); // Redirects to the login page
	    }
	
    

//	@PostMapping("/loginformEmployee")
//	public ModelAndView loginEmployee(
//	        @RequestParam("email") String email,
//	        @RequestParam("password") String password) {
//
//	    // Check if an employee with the provided email and password exists
//	    Optional<Employee> existingEmployee = employeeService.getEmployeeByEmailAndPassword(email, password);
//
//	    if (existingEmployee.isPresent()) {
//	        // Redirect to the employee dashboard page if login is successful
//	        return new ModelAndView("redirect:/employee/dashboard");
//	    } else {
//	        // Show an error message if login fails
//	        ModelAndView mav = new ModelAndView("loginEmployee"); // Set the view to the same login page
//	        mav.addObject("employee", new Employee()); // Add a new employee object to the model
//	        mav.addObject("message", "Invalid email or password"); // Add the error message to the model
//	        return mav;
//	    }
	}
//	@Autowired
//	private EmployeeService employeeService;
//
//	// Get all employees
//	@GetMapping
//	public List<Employee> getAllEmployees() {
//		return employeeService.getAllEmployees();
//	}
//
//	// Get employee by ID
//	@GetMapping("/{id}")
//	public Employee getEmployeeById(@PathVariable int id) {
//		return employeeService.getEmployeeById(id);
//	}
//
//	// Create a new employee
//	@PostMapping
//	public Employee createEmployee(@RequestBody Employee employee) {
//		return employeeService.createEmployee(employee);
//	}
//
//	// Update an existing employee
//	@PutMapping("/{id}")
//	public Employee updateEmployee(@PathVariable int id, @RequestBody Employee employee) {
//		return employeeService.updateEmployee(id, employee);
//	}
//
//	// Delete an employee
//	@DeleteMapping("/{id}")
//	public void deleteEmployee(@PathVariable int id) {
//		employeeService.deleteEmployee(id);
//	}

