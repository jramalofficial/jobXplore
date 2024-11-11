<!-- Location: src/main/webapp/WEB-INF/views/editEmployeeJob.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Job Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        form {
            margin: 20px;
        }
        label {
            display: block;
            margin: 10px 0 5px;
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <h2>Edit Job Information</h2>
    
    <form action="/updateEmployeeJob" method="post">
        <input type="hidden" name="job_id" value="${employeeJob.job_id}" />

        <label>Job Title:</label>
        <input type="text" name="job_title" value="${employeeJob.job_title}" />

        <label>Job Description:</label>
        <input type="text" name="job_description" value="${employeeJob.job_description}" />

        <label>Job Location:</label>
        <input type="text" name="job_location" value="${employeeJob.job_location}" />

        <label>Job Experience:</label>
        <input type="text" name="job_experience" value="${employeeJob.job_experience}" />

        <label>Salary:</label>
        <input type="number" name="salary" value="${employeeJob.salary}" />

        <input type="submit" value="Update Job">
    </form>
</body>
</html>
