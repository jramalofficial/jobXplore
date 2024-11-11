package com.ukf.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
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
import com.ukf.demo.model.Job;
import com.ukf.demo.service.CompanyService;


@Controller
//@RequestMapping("/company")
public class CompanyController {

	@Autowired
	private CompanyService companyService;

//	@PostMapping("/add")
//	public ResponseEntity<Company> addCompany(@RequestBody Company company) {
//		Company savedCompany = companyService.addCompany(company);
//		return new ResponseEntity<>(savedCompany, HttpStatus.CREATED);
//	}
	@GetMapping("/")
    public ModelAndView homeCompany() {
        ModelAndView modelAndView = new ModelAndView("home");
        modelAndView.addObject("company", new Company());
        return modelAndView;
    }
	@GetMapping("/addCompany")
    public ModelAndView addCompany() {
        ModelAndView modelAndView = new ModelAndView("form");
        modelAndView.addObject("company", new Company());
        return modelAndView;
    }
	@GetMapping("/loginCompany")
    public ModelAndView loginCompany() {
        ModelAndView modelAndView = new ModelAndView("login");
        modelAndView.addObject("company", new Company());
        return modelAndView;
    }
	
	
	   // Save or update a product
	@PostMapping("/saveCompany")
	public ModelAndView saveCompany(
	        @RequestParam("comp_name") String comp_name,
	        @RequestParam("comp_email") String comp_email,
	        @RequestParam("contact_no") long contact_no,
	        @RequestParam("comp_location") String comp_location,
	        @RequestParam("password") String password) {
	    
	    // Check if a company with the provided email already exists
	    Optional<Company> existingCompany = companyService.getCompanyByEmail(comp_email);
	    

        if (existingCompany.isPresent()) {
            // If the company with the provided email already exists, show an error message
            ModelAndView mav = new ModelAndView("form"); // Set the view to the same form page
            mav.addObject("company", new Company()); // Add a new company object to the model
            mav.addObject("message", "Account already exists with the email: " + comp_email); // Add the error message to the model
            return mav;
        }

        // Create a new company if the email is not found
        Company company = new Company();
        company.setComp_name(comp_name);
        company.setComp_email(comp_email);
        company.setContact_no(contact_no);
        company.setComp_location(comp_location);
        company.setPassword(password);

        // Save the new company
        companyService.saveCompany(company);

        // Redirect after saving
        return new ModelAndView("redirect:/loginCompany"); // Redirects to the login page
    }
	@PostMapping("/companydetails")
	public ModelAndView loginCompany(@RequestParam("comp_email") String email, 
	                                 @RequestParam("password") String password) {
	    
	    // Check if the company exists with the given email and password
	    Optional<Company> company = companyService.getCompanyByEmailAndPassword(email, password);

	    if (company.isPresent()) {
	        // If login is successful, redirect to company details page
	        return new ModelAndView("redirect:/list");
	    } else {
	        // If login fails, show an error message and redirect to the login page
	        ModelAndView mav = new ModelAndView("login"); // Set the view to the same form page
	        mav.addObject("company", new Company()); // Add a new company object to the model
	        mav.addObject("message", "Incorrect email or password"); // Add the error message to the model
	        return mav;
	    }
	}

    @PostMapping("/loginform")
    public ModelAndView login(
            @RequestParam("comp_email") String comp_email,
            @RequestParam("password") String password) {

        // Check if a company with the provided email and password exists
        Optional<Company> existingCompany = companyService.getCompanyByEmailAndPassword(comp_email, password);

        if (existingCompany.isPresent()) {
            // If the company with the provided email and password exists, redirect to the job vacancy adding page
            return new ModelAndView("redirect:/job/addJob");
        } else {
            // If the company with the provided email and password does not exist, show an error message
            ModelAndView mav = new ModelAndView("login"); // Set the view to the same login page
            mav.addObject("company", new Company()); // Add a new company object to the model
            mav.addObject("message", "Invalid email or password"); // Add the error message to the model
            return mav;
        }
        
     
    }

	
	// Redirects to the addCompany page
	
//	@GetMapping("/get/{id}")
//	public ResponseEntity<Company> getCompanyById(@PathVariable int id) {
//		Company company = companyService.getCompanyById(id);
//		return new ResponseEntity<>(company, HttpStatus.OK);
//	}
//
//	@GetMapping("/get-all")
//	public ResponseEntity<List<Company>> getAllCompanies() {
//		List<Company> companies = companyService.getAllCompanies();
//		return new ResponseEntity<>(companies, HttpStatus.OK);
//	}
//
//	@PutMapping("/update/{id}")
//	public ResponseEntity<Company> updateCompany(@PathVariable int id, @RequestBody Company company) {
//		Company updatedCompany = companyService.updateCompany(id, company);
//		return new ResponseEntity<>(updatedCompany, HttpStatus.OK);
//	}
//
//	@DeleteMapping("/delete/{id}")
//	public ResponseEntity<Void> deleteCompany(@PathVariable int id) {
//		companyService.deleteCompany(id);
//		return new ResponseEntity<>(HttpStatus.NO_CONTENT);
//	}
}