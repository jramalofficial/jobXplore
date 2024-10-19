// EmployeeController.java
package com.job.demo.controller;

import com.job.demo.model.CompanyJob;
import com.job.demo.model.Employee;
import com.job.demo.service.CompanyJobService;
import com.job.demo.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;

@Controller
public class EmployeeController {
    @Autowired
    private EmployeeService employeeService;
    
    @Autowired
    private CompanyJobService companyJobService;


    @GetMapping("/employee/login")
    public ModelAndView loginPage() {
        return new ModelAndView("employeeLogin");
    }
    @GetMapping("/")
    public ModelAndView homePage() {
    	return new ModelAndView("home");
    }

    @PostMapping("/employee/login")
    public ModelAndView loginEmployee(@RequestParam("email") String email,
                                       @RequestParam("password") String password) {
        Optional<Employee> employee = employeeService.findByEmailAndPassword(email, password);

        if (employee.isPresent()) {
        	List<CompanyJob> jobList = companyJobService.getAllJobs(); // Fetch jobs from the database
            ModelAndView modelAndView = new ModelAndView("employeeDashboard"); // The name of your JSP file
            modelAndView.addObject("jobList", jobList);
            modelAndView.addObject("employee", employee.get());
            return modelAndView;
        } else {
            ModelAndView mav = new ModelAndView("employeeLogin");
            mav.addObject("message", "Invalid email or password.");
            return mav;
        }
        
    }
//    @GetMapping("/employee/updateProfile")
//    public ModelAndView showUpdateProfileForm(@RequestParam int id) {
//        ModelAndView modelAndView = new ModelAndView("editProfile"); // The name of your JSP file
//        Optional<Employee> employeeOpt = employeeService.findById(id); // Fetch employee by ID
//            modelAndView.addObject("employee", employeeOpt.get());
//            // Handle the case where the employee is not found
//             // Redirect to the dashboard if not found
//        return modelAndView;
//    }
//    @PostMapping("/employee/updateProfile")
//    public String updateProfile(@ModelAttribute Employee employee) {
//        employeeService.updateEmployee(employee); // Update employee in the database
//        return "redirect:/employee/dashboard?${employee.email}"; // Redirect back to the dashboard
//    }
    @GetMapping("/employee/updateProfile")
    public ModelAndView showUpdateProfileForm(@RequestParam int id) {
        ModelAndView modelAndView = new ModelAndView("editProfile"); // The name of your JSP file

        // Fetch employee by ID
        Optional<Employee> employeeOpt = employeeService.findById(id);
        
        if (employeeOpt.isPresent()) {
            modelAndView.addObject("employee", employeeOpt.get()); // Add employee object to model
        } else {
            // Handle the case where the employee is not found, redirect to the dashboard
            modelAndView.setViewName("redirect:/employee/dashboard");
        }

        return modelAndView;
    }

    // Handle the update profile submission
    @PostMapping("/employee/updateProfile")
    public String updateProfile(@ModelAttribute Employee employee) {
        employeeService.updateEmployee(employee); // Update employee details
        return "employeeProfile"; // Redirect back to the dashboard after update
    }

    @GetMapping("/employee/dashboard")
    public ModelAndView showEmployeeDashboard(@RequestParam int id) {
        List<CompanyJob> jobList = companyJobService.getAllJobs();
        Optional<Employee> employee = employeeService.findById(id);// Fetch jobs from the database
        ModelAndView modelAndView = new ModelAndView("employeeDashboard"); // The name of your JSP file
        modelAndView.addObject("jobList", jobList);
        modelAndView.addObject("employee",employee.get());
        // Add the job list to the model
        return modelAndView; // Return the ModelAndView object
    }
    @GetMapping("/employee/viewProfile")
    public ModelAndView viewEmployeeProfile(@RequestParam int id) {
        Optional<Employee> employeeOpt = employeeService.findById(id);
        ModelAndView modelAndView = new ModelAndView("employeeProfile");

        if (employeeOpt.isPresent()) {
            modelAndView.addObject("employee", employeeOpt.get());
        } else {
            modelAndView.setViewName("redirect:/employee/dashboard");
        }

        return modelAndView;
    }


    @GetMapping("/employee/register")
    public ModelAndView registerEmployeePage() {
        return new ModelAndView("registerEmployee");
    }

    @PostMapping("/employee/register")
    public ModelAndView registerEmployee(@ModelAttribute Employee employee) {
        employeeService.save(employee);
        return new ModelAndView("employeeLogin");
    }
    
}
