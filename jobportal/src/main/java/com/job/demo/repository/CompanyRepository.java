// CompanyRepository.java
package com.job.demo.repository;

import com.job.demo.model.Company;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;
@Repository
public interface CompanyRepository extends JpaRepository<Company, Integer> {

    @Query("SELECT c FROM Company c WHERE c.email = :email AND c.password = :password")
    Optional<Company> findByEmailAndPassword(String email, String password);
    @Query("SELECT c FROM Company c WHERE c.email = :email")
  Optional<Company> findByEmail(String email);
}