<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${employeeJob.id == null ? 'Add Employee Job' : 'Edit Employee Job'}</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }
        h2 {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"], input[type="email"], input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .submit-btn {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .submit-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>${employeeJob.id == null ? 'Add Employee Job' : 'Edit Employee Job'}</h2>
    <form action="saveEmployeeJob" method="post">
        <input type="hidden" name="id" value="${employeeJob.id}">
        
        <label for="name">Employee Name:</label>
        <input type="text" id="name" name="name" required value="${employeeJob.name != null ? employeeJob.name : ''}">
        
        <label for="job_title">Job Title:</label>
        <input type="text" id="job_title" name="job_title" required value="${employeeJob.job_title != null ? employeeJob.job_title : ''}">
        
        <label for="location">Location:</label>
        <input type="text" id="location" name="location" required value="${employeeJob.location != null ? employeeJob.location : ''}">
        
        <label for="experience">Experience (years):</label>
        <input type="number" id="experience" name="experience" required value="${employeeJob.experience != null ? employeeJob.experience : ''}">
        
        <label for="phone_no">Phone Number:</label>
        <input type="number" id="phone_no" name="phone_no" required value="${employeeJob.phone_no != null ? employeeJob.phone_no : ''}">
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required value="${employeeJob.email != null ? employeeJob.email : ''}">
        
        <input type="submit" value="Save" class="submit-btn">
    </form>
</div>

</body>
</html>
