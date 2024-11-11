<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Profile</title>
</head>
<body>
    <h2>Edit Profile</h2>
    <form action="/updateProfile" method="post">
        <input type="hidden" name="emp_id" value="${employee.emp_id}" />
        
        <label>Name:</label><br>
        <input type="text" name="emp_name" value="${employee.emp_name}" /><br><br>
        
        <label>Email:</label><br>
        <input type="email" name="email" value="${employee.email}" readonly/><br><br>
        
        <label>Phone Number:</label><br>
        <input type="text" name="phone_no" value="${employee.phone_no}" /><br><br>
        
        <label>Location:</label><br>
        <input type="text" name="location" value="${employee.location}" /><br><br>
        
        <label>Password:</label><br>
        <input type="password" name="password" value="${employee.password}" /><br><br>

        <h3>Employee Job Details</h3>
        <label>Job Title:</label><br>
        <input type="text" name="job_title" value="${employeeJob.job_title}" /><br><br>

        <label>Job Description:</label><br>
        <textarea name="job_description">${employeeJob.job_description}</textarea><br><br>

        <label>Location:</label><br>
        <input type="text" name="job_location" value="${employeeJob.job_location}" /><br><br>

        <label>Experience:</label><br>
        <input type="text" name="job_experience" value="${employeeJob.job_experience}" /><br><br>

        <input type="submit" value="Update Profile" />
    </form>
</body>
</html>

