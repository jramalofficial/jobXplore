package com.job.demo.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.job.demo.model.CompanyJob;

public interface CompanyJobRepository extends JpaRepository<CompanyJob, Long> {
    // Custom query methods can be defined here if needed
	@Query("SELECT cj FROM CompanyJob cj WHERE cj.email = :email")
    List<CompanyJob> findByCompanyEmail(@Param("email") String email);
	
}
