package com.ukf.demo.repository;



import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.ukf.demo.model.Company;
@Repository
public interface CompanyRepository  extends JpaRepository<Company, Integer>{
	   @Query
	   ("SELECT c FROM Company c WHERE c.comp_email = :email")
	   
	    Optional<Company> findByCompEmail(String email);
	   
	   @Query("SELECT c FROM Company c WHERE c.comp_email = :email AND c.password = :password")
	    Optional<Company> findByCompEmailAndPassword(@Param("email") String email, @Param("password") String password);
	   
	  
//	    Optional<Company> findByEmailAndPassword(@Param("email") String email, @Param("password") String password);


}
