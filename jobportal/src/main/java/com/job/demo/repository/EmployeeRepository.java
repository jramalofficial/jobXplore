package com.job.demo.repository;

import com.job.demo.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;
@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

    @Query("SELECT e FROM Employee e WHERE e.email = :email AND e.password = :password")
    Optional<Employee> findByEmailAndPassword(String email, String password);

    @Query("SELECT e FROM Employee e WHERE e.email = :email")
    Optional<Employee> findByEmail(String email);
    
//    @Query("SELECT e FROM Employee e WHERE e.id = :id")
//    Optional<Employee> findById(@Param("id") Long id);
}