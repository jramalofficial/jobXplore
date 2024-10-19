// CompanyService.java
package com.job.demo.service;

import com.job.demo.model.Company;
import com.job.demo.model.Employee;
import com.job.demo.repository.CompanyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class CompanyService {
    @Autowired
    private CompanyRepository companyRepository;

    public Optional<Company> findByEmailAndPassword(String email, String password) {
        return companyRepository.findByEmailAndPassword(email, password);
    }

    public void saveCompany(Company company) {
        companyRepository.save(company);
    }

    public Optional<Company> findByEmail(String email) {
        return companyRepository.findByEmail(email);
    }
    public void updateCompany(Company updatedCompany) {
        Optional<Company> existingCompanyOpt = companyRepository.findById(updatedCompany.getId());

        if (existingCompanyOpt.isPresent()) {
            Company existingCompany = existingCompanyOpt.get();
            // Update the fields
            existingCompany.setName(updatedCompany.getName());
            existingCompany.setEmail(updatedCompany.getEmail());
            existingCompany.setLocation(updatedCompany.getLocation());
            // Log before saving
            System.out.println("Updating company: " + existingCompany);
            companyRepository.save(existingCompany);
        }
    }
    
}

