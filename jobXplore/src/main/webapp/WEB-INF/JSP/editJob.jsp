<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Job</title>
</head>
<body>
    <h2>Edit Job</h2>

    <form action="/updates" method="post">
        <input type="hidden" name="job_id" value="${job.job_id}" />

        <label for="job_title">Job Title:</label>
        <input type="text" id="job_title" name="job_title" value="${job.job_title}" required/><br/><br/>

        <label for="job_description">Job Description:</label>
        <textarea id="job_description" name="job_description" required>${job.job_description}</textarea><br/><br/>

        <label for="job_location">Job Location:</label>
        <input type="text" id="job_location" name="job_location" value="${job.job_location}" required/><br/><br/>

        <label for="job_experience">Job Experience:</label>
        <input type="text" id="job_experience" name="job_experience" value="${job.job_experience}" required/><br/><br/>

        <label for="salary">Salary:</label>
        <input type="number" id="salary" name="salary" value="${job.salary}" required/><br/><br/>

        <input type="submit" value="Update Job"/>
    </form>

    <a href="/jobs">Back to Job List</a>
</body>
</html>
