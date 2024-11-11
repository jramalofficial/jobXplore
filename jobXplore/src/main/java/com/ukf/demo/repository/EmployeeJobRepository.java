package com.ukf.demo.repository;



import com.ukf.demo.model.EmployeeJob;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeJobRepository extends JpaRepository<EmployeeJob, Integer> {
    // Additional query methods can be defined here if needed
	 @Query("SELECT ej FROM EmployeeJob ej WHERE ej.email = :email")
	 Optional<EmployeeJob> findByEmail(String email);
	 
	 

    
	}

