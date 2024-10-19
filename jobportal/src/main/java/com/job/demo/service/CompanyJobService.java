package com.job.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.job.demo.model.CompanyJob;
import com.job.demo.repository.CompanyJobRepository;

@Service
public class CompanyJobService {
	private final CompanyJobRepository companyJobRepository;

    @Autowired
    public CompanyJobService(CompanyJobRepository companyJobRepository) {
        this.companyJobRepository = companyJobRepository;
    }

    public List<CompanyJob> getAllJobs() {
        return companyJobRepository.findAll();
    }

    public CompanyJob saveJob(CompanyJob job) {
        return companyJobRepository.save(job);
    }

    public CompanyJob getJobById(Long id) {
        return companyJobRepository.findById(id).orElse(null);
    }

    public void deleteJobs(Long id) {
        companyJobRepository.deleteById(id);
    }
    
    public List<CompanyJob> getJobsByCompanyEmail(String email) {
        return companyJobRepository.findByCompanyEmail(email);  // Fetch jobs by company email
    }

    public void addJob(CompanyJob companyJob, String email) {
        companyJob.setEmail(email);  // Set company email
        companyJobRepository.save(companyJob);  // Save new job
    }

    public void updateJob(CompanyJob companyJob) {
        companyJobRepository.save(companyJob);  // Update job details
    }

    
}
