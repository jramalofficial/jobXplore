// CompanyController.java
package com.job.demo.controller;

import com.job.demo.model.Company;
import com.job.demo.model.CompanyJob;
import com.job.demo.model.Employee;
import com.job.demo.service.CompanyJobService;
import com.job.demo.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;

@Controller
public class CompanyController {
    @Autowired
    private CompanyService companyService;
    
    @Autowired
    private CompanyJobService companyJobService;

    @GetMapping("/company/login")
    public ModelAndView loginPage() {
        return new ModelAndView("companyLogin");
    }
    @GetMapping("/home1")
    public ModelAndView homePage() {
    	return new ModelAndView("home");
    }

    @PostMapping("/company/login")
    public ModelAndView loginCompany(@RequestParam("email") String email,
                                      @RequestParam("password") String password) {
        Optional<Company> company = companyService.findByEmailAndPassword(email, password);

        if (company.isPresent()) {
        	ModelAndView modelAndView = new ModelAndView("company-Dashboard");
            List<CompanyJob> jobList = companyJobService.getJobsByCompanyEmail(email);  // Fetch jobs by company email
            modelAndView.addObject("jobList", jobList);
            modelAndView.addObject("email", email);  // Pass company email for further actions
            return modelAndView;
        } else {
            ModelAndView mav = new ModelAndView("companyLogin");
            mav.addObject("message", "Invalid email or password.");
            return mav;
        }
    }

    @GetMapping("/company/register")
    public ModelAndView registerCompanyPage() {
        return new ModelAndView("registerCompany");
    }
    @GetMapping("/company/dashboard")
    public ModelAndView showDashboardPage(@RequestParam("email") String email) {
    	ModelAndView modelAndView = new ModelAndView("company-Dashboard");
        List<CompanyJob> jobList = companyJobService.getJobsByCompanyEmail(email);  // Fetch jobs by company email
        modelAndView.addObject("jobList", jobList);
        modelAndView.addObject("email", email);  // Pass company email for further actions
        return modelAndView;
    }

    @PostMapping("/company/register")
    public ModelAndView registerCompany(@ModelAttribute Company company) {
        companyService.saveCompany(company);
        return new ModelAndView("companyLogin");
 
    }
//    @GetMapping("/company/dashboard")
//    public ModelAndView showCompanyDashboard(@RequestParam String email) {
//        ModelAndView modelAndView = new ModelAndView("company-dashboard");
//        List<CompanyJob> jobList = companyJobService.getJobsByCompanyEmail(email);  // Fetch jobs by company email
//        modelAndView.addObject("jobList", jobList);
//        modelAndView.addObject("email", email);  // Pass company email for further actions
//        return modelAndView;
//    }

    @PostMapping("/company/addJob")
    public String addJob(@ModelAttribute CompanyJob companyJob, @RequestParam String email) {
        companyJobService.addJob(companyJob, email);  // Add new job associated with company email
        return "redirect:/company/dashboard?email=" + email;
    }
    @GetMapping("/company/editJob")
    public ModelAndView showEditJobForm(@RequestParam Long id, @RequestParam String email) {
        ModelAndView modelAndView = new ModelAndView("editJob");
        CompanyJob job = companyJobService.getJobById(id);  // Fetch job by ID
        modelAndView.addObject("job", job);  // Pass the job details to the view
        modelAndView.addObject("email", email);  // Pass the company email for redirection after editing
        return modelAndView;
    }

    @PostMapping("/company/editJob")
    public String editJob(@ModelAttribute CompanyJob companyJob, @RequestParam String email) {
        companyJobService.updateJob(companyJob);  // Update existing job
        return "redirect:/company/dashboard?email=" + email;
    }

    @PostMapping("/company/deleteJob")
    public String deleteJob(@RequestParam Long jobId, @RequestParam String email) {
        companyJobService.deleteJobs(jobId);  // Delete job by ID
        return "redirect:/company/dashboard?email=" + email;  // Redirect to dashboard after deletion
    }
    @GetMapping("/company/viewProfile")
    public ModelAndView viewProfile(@RequestParam("email") String email) {
        Optional<Company> companyOptional = companyService.findByEmail(email);
        ModelAndView modelAndView = new ModelAndView("viewProfile");
        
        if (companyOptional.isPresent()) {
            modelAndView.addObject("company", companyOptional.get());
        } else {
            modelAndView.addObject("errorMessage", "Company not found.");
             // Log the error
        }
        
        return modelAndView;
    }
 // Return the ModelAndView object

    // Example controller method for editing profile
    @GetMapping("/company/editProfile")
    public ModelAndView editProfile(@RequestParam("email") String email) {
        Optional<Company> companyOptional = companyService.findByEmail(email); // Get company details for editing
        ModelAndView modelAndView = new ModelAndView("editProfile1"); // Specify the view name
        
        if (companyOptional.isPresent()) {
            modelAndView.addObject("company", companyOptional.get()); // Add the actual company object to the model
        } else {
            modelAndView.addObject("errorMessage", "Company not found."); // Handle the case when the company is not found
        }
        
        return modelAndView; // Return the ModelAndView object
    }
    @PostMapping("/company/updateProfile")
    public String updateProfile(@ModelAttribute Company company) {
        companyService.updateCompany(company); // Update company details
        return "redirect:/company/viewProfile?email=" + company.getEmail(); // Redirect to view the updated profile
    }
    
}

