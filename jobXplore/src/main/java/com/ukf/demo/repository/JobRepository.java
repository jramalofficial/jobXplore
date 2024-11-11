package com.ukf.demo.repository;

import com.ukf.demo.model.Job;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface JobRepository extends JpaRepository<Job, Long> {

    // Search jobs by job title
    @Query("SELECT j FROM Job j WHERE LOWER(j.job_title) LIKE LOWER(CONCAT('%', :jobTitle, '%'))")
    List<Job> findByJobTitle(@Param("jobTitle") String jobTitle);

    // Search jobs by location
    @Query("SELECT j FROM Job j WHERE LOWER(j.job_location) LIKE LOWER(CONCAT('%', :jobLocation, '%'))")
    List<Job> findByJobLocation(@Param("jobLocation") String jobLocation);

    // Search jobs by both title and location
    @Query("SELECT j FROM Job j WHERE LOWER(j.job_title) LIKE LOWER(CONCAT('%', :jobTitle, '%')) " +
            "AND LOWER(j.job_location) LIKE LOWER(CONCAT('%', :jobLocation, '%'))")
    List<Job> findByJobTitleAndJobLocation(@Param("jobTitle") String jobTitle, @Param("jobLocation") String jobLocation);
}
