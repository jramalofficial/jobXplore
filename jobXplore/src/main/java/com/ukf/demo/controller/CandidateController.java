package com.ukf.demo.controller;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ukf.demo.model.Employee;
import com.ukf.demo.model.EmployeeJob;
import com.ukf.demo.service.EmployeeJobService;
import com.ukf.demo.service.EmployeeService;

@Controller
public class CandidateController {

    @Autowired
    private EmployeeService employeeService; // Assuming you have this service

    @GetMapping("/viewProfile")
    public ModelAndView showProfile(@RequestParam("email") String email) {
        Optional<Employee> candidateDetails = employeeService.getEmployeeByEmail(email);
        ModelAndView modelAndView = new ModelAndView("profile1"); // JSP page name
        candidateDetails.ifPresent(modelAndView::addObject);
        return modelAndView;
    }
}
