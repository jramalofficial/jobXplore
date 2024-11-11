package com.ukf.demo.controller;

import com.ukf.demo.model.Company;
import com.ukf.demo.model.EmployeeJob;
import com.ukf.demo.service.EmployeeJobService;

import ch.qos.logback.core.model.Model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;

@Controller
//@RestController("/job")
public class EmployeeJobController {

    @Autowired
    private EmployeeJobService employeeJobService;

    // Display the form for adding a new job or editing an existing one
  

@GetMapping("/list")
public ModelAndView list() {
    // Fetch all employee jobs
    List<EmployeeJob> employeeJobs = employeeJobService.getAllEmployeeJobs(); 
    
    // Create a ModelAndView object
    ModelAndView modelAndView = new ModelAndView("emplist"); // Specify the JSP page name
    
    // Add the employee jobs list to the model
    modelAndView.addObject("employeeJobs", employeeJobs); 
    
    // Return the ModelAndView object
    return modelAndView; 
}
//    // Save or update the employee job
//    @PostMapping("/saveEmployeeJob")
//    public String saveEmployeeJob(
//            @RequestParam(value = "id", required = false) Integer id,
//            @RequestParam("name") String name,
//            @RequestParam("job_title") String jobTitle,
//            @RequestParam("location") String location,
//            @RequestParam("experience") int experience,
//            @RequestParam("phone_no") long phoneNo,
//            @RequestParam("email") String email) {
//
//        EmployeeJob employeeJob = (id != null && id > 0) ? employeeJobService.getEmployeeJobById(id).orElse(new EmployeeJob()) : new EmployeeJob();
//
//        employeeJob.setName(name);
//        employeeJob.setJob_title(jobTitle);
//        employeeJob.setLocation(location);
//        employeeJob.setExperience(experience);
//        employeeJob.setPhone_no(phoneNo);
//        employeeJob.setEmail(email);
//
//        employeeJobService.saveEmployeeJob(employeeJob);
//
//        return "redirect:/searchJobs"; // Redirect to the list of jobs after saving
//    }

//    // Display the list of employee jobs
//    @GetMapping("/employeeJobList")
//    public ModelAndView listEmployeeJobs() {
//        ModelAndView modelAndView = new ModelAndView("listEmployeeJobs");
//        modelAndView.addObject("employeeJobs", employeeJobService.getAllEmployeeJobs());
//        return modelAndView;
//    }
 // Display the Add Employee Job Form
    @GetMapping("/addEmployeeJob")
    public ModelAndView addEmployeeJobForm() {
        ModelAndView modelAndView = new ModelAndView("addEmployee");
        modelAndView.addObject("employeeJob", new EmployeeJob()); // Pass a new EmployeeJob object to the form
        return modelAndView;
    }

    // Save or Update the Employee Job
    @PostMapping("/saveEmployeeJob")
    public ModelAndView saveEmployeeJob(@ModelAttribute("employeeJob") EmployeeJob employeeJob) {
        // Save the employee job in the database
        employeeJobService.saveEmployeeJob(employeeJob);

        // Prepare ModelAndView for redirection after saving
        ModelAndView mav = new ModelAndView("redirect:/list");
        mav.addObject("message", "Employee Job saved successfully!"); // Optionally add a success message

        return mav; // Return the ModelAndView object
    }

    
}
