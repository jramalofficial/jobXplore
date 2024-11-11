package com.ukf.demo.controller;

import com.ukf.demo.model.Job;
import com.ukf.demo.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class JobController {

    @Autowired
    private JobService jobService;

    // Display all jobs or search based on title or location
    @GetMapping("/job")
    public ModelAndView listJobs(@RequestParam(value = "title", required = false) String title,
                                 @RequestParam(value = "location", required = false) String location) {
        List<Job> jobs;

        if ((title != null && !title.isEmpty()) || (location != null && !location.isEmpty())) {
            jobs = jobService.searchJobs(title, location);
        } else {
            jobs = jobService.getAllJobs();
        }

        ModelAndView modelAndView = new ModelAndView("jobList"); // JSP page name
        modelAndView.addObject("jobs", jobs);
        modelAndView.addObject("searchTitle", title);
        modelAndView.addObject("searchLocation", location);

        return modelAndView;
    }
     // Fetch all jobs and display them on the JSP page
        @GetMapping("/jobs")
        public ModelAndView getAllJobs() {
            List<Job> jobs = jobService.getAllJobs();
            ModelAndView mav = new ModelAndView("jobList");
            mav.addObject("jobs", jobs);
            return mav;
        }


        // Display the form for adding a new job
        @GetMapping("add")
        public ModelAndView showAddJobForm() {
            ModelAndView mav = new ModelAndView("addjob");
            mav.addObject("job", new Job()); // Send an empty Job object to the form
            return mav;
        }

        // Handle the submission of the new job form
        @PostMapping("saves")
        public String saveJob(@RequestParam("job_title") String jobTitle,
                              @RequestParam("job_description") String jobDescription,
                              @RequestParam("job_location") String jobLocation,
                              @RequestParam("job_experience") String jobExperience,
                              @RequestParam("salary") double salary) {

            Job job = new Job();
            job.setJob_title(jobTitle);
            job.setJob_description(jobDescription);
            job.setJob_location(jobLocation);
            job.setJob_experience(jobExperience);
            job.setSalary(salary);

            jobService.saveJob(job);

            return "redirect:/jobs"; // Redirect back to job listing after saving
        }
        // Delete job by ID
        @GetMapping("/jobs/delete/{job_id}")
        public String deleteJob(@PathVariable Long job_id) {
            jobService.deleteJob(job_id);
            return "redirect:/jobs"; // Redirect back to job listing after deletion
        }

        // Show the update form for a specific job
        @GetMapping("/jobs/edit/{job_id}")
        public ModelAndView showEditJobForm(@PathVariable Long job_id) {
            Job job = jobService.getJobById(job_id);
            ModelAndView mav = new ModelAndView("editJob");
            mav.addObject("job", job);
            return mav;
        }

        // Process job update
        @PostMapping("/updates")
        public String updateJob(@ModelAttribute Job job) {
            jobService.updateJob(job);
            return "redirect:/jobs"; // Redirect back to job listing after update
        }
}
