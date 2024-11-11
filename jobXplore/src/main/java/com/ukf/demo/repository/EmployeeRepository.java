package com.ukf.demo.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.ukf.demo.model.Employee;
import com.ukf.demo.model.EmployeeJob;


@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer>{
	
    @Query("SELECT e FROM Employee e WHERE e.email = :email")
    Optional<Employee> findByEmail(@Param("email") String email);

    // Custom query to find an employee by email and password
    @Query("SELECT e FROM Employee e WHERE e.email = :email AND e.password = :password")
    Optional<Employee> findByEmailAndPassword(@Param("email") String email, @Param("password") String password);
    
//    @Query("SELECT e FROM EmployeeJob e WHERE e.email = :email AND e.password = :password")
//    Optional<Employee> findByEmailAndPasswords(@Param("email") String email, @Param("password") String password);
    @Query("SELECT e FROM Employee e WHERE e.email = :email")
    Optional<Employee> findByEmails(String email);
}
