package com.ukf.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ukf.demo.model.Company;

import com.ukf.demo.repository.CompanyRepository;

@Service
public class CompanyService {

	@Autowired
	private CompanyRepository companyRepository;
//
//	public Company addCompany(Company company) {
//		return companyRepository.save(company);
//	}
	
	   public void saveCompany(Company company) {
	        companyRepository.save(company);
	    }

	 public Optional<Company> getCompanyById(int id) {
	        Optional<Company> company = companyRepository.findById(id);
	        return company;
	 }
	 
	 public Optional<Company> getCompanyByEmail(String email) {
		    return companyRepository.findByCompEmail(email);
		}
	 public Optional<Company> getCompanyByEmailAndPassword(String email, String password) {
	        return companyRepository.findByCompEmailAndPassword(email, password);
	    }
//	 public Optional<Company> findByEmailAndPassword(String email, String password) {
//	        return companyRepository.findByEmailAndPassword(email, password);
//	    }


//	public List<Company> getAllCompanies() {
//		return companyRepository.findAll();
//	}
//
//	public Company updateCompany(int id, Company company) {
//		Company existingCompany = companyRepository.findById(id).orElse(null);
//		if (existingCompany != null) {
//			existingCompany.setComp_id(company.getComp_id());
//			existingCompany.setComp_name(company.getComp_name());
//			existingCompany.setComp_email(company.getComp_email());
//			existingCompany.setContact_no(company.getContact_no());
//			existingCompany.setComp_location(company.getComp_location());
//			return companyRepository.save(existingCompany);
//		}
//		return null;
//	}
//
//	public void deleteCompany(int id) {
//		companyRepository.deleteById(id);
//	}
}

