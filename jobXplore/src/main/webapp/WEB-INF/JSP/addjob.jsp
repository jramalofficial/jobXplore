<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Job</title>
</head>
<body>
    <h2>Add New Job</h2>

    <form action="saves" method="post">
        <label for="job_title">Job Title:</label>
        <input type="text" id="job_title" name="job_title" required/><br/><br/>

        <label for="job_description">Job Description:</label>
        <textarea id="job_description" name="job_description" required></textarea><br/><br/>

        <label for="job_location">Job Location:</label>
        <input type="text" id="job_location" name="job_location" required/><br/><br/>

        <label for="job_experience">Job Experience:</label>
        <input type="text" id="job_experience" name="job_experience" required/><br/><br/>

        <label for="salary">Salary:</label>
        <input type="number" id="salary" name="salary" required/><br/><br/>

        <input type="submit" value="Add Job"/>
    </form>

    <a href="/jobs">Back to Job List</a>
</body>
</html>
