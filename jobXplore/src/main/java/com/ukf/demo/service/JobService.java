package com.ukf.demo.service;

import com.ukf.demo.model.Job;
import com.ukf.demo.repository.JobRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class JobService {

    @Autowired
    private JobRepository jobRepository;

    // Fetch all jobs from the database
    public List<Job> getAllJobs() {
        return jobRepository.findAll();
    }

    // Search jobs based on title and/or location
    public List<Job> searchJobs(String title, String location) {
        if (title != null && location != null && !title.isEmpty() && !location.isEmpty()) {
            return jobRepository.findByJobTitleAndJobLocation(title, location);
        } else if (title != null && !title.isEmpty()) {
            return jobRepository.findByJobTitle(title);
        } else if (location != null && !location.isEmpty()) {
            return jobRepository.findByJobLocation(location);
        } else {
            return getAllJobs();
        }
    }
  

    public void deleteJob(Long job_id) {
        jobRepository.deleteById(job_id);
    }

    public Job getJobById(Long job_id) {
        Optional<Job> job = jobRepository.findById(job_id);
        return job.orElse(null);
    }

    public void updateJob(Job job) {
        jobRepository.save(job);
    }

    // Save a new job
    public void saveJob(Job job) {
        jobRepository.save(job);
    }
}

  
