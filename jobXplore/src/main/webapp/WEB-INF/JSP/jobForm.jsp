<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add/Edit Job</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }
        form {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        input[type=text], input[type=number] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type=submit] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type=submit]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<h2>Add or Edit Job</h2>

<form action="saveJob" method="post">
    <input type="hidden" name="job_id" value="${job.job_id}" />

    <label for="job_title">Job Title:</label>
    <input type="text" id="job_title" name="job_title" value="${job.job_title}" required>

    <label for="job_description">Job Description:</label>
    <input type="text" id="job_description" name="job_description" value="${job.job_description}" required>

    <label for="job_location">Job Location:</label>
    <input type="text" id="job_location" name="job_location" value="${job.job_location}" required>

    <label for="job_experience">Experience (Years):</label>
    <input type="text" id="job_experience" name="job_experience" value="${job.job_experience}" required>

    <label for="salary">Salary:</label>
    <input type="number" id="salary" name="salary" value="${job.salary}" required>

    <input type="submit" value="Save Job">
</form>

</body>
</html>
