<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Job Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .container {
            width: 50%;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        input[type="text"], input[type="number"], input[type="email"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Employee Job Profile</h2>
    <form action="/updateProfile" method="post">
        <input type="hidden" name="id" value="${employeeJob.id}" >
        
        <label>Name:</label>
        <input type="text" name="name" value="${employeeJob.name}" required>
        
        <label>Job Title:</label>
        <input type="text" name="job_title" value="${employeeJob.job_title}" required>
        
        <label>Location:</label>
        <input type="text" name="location" value="${employeeJob.location}" required>
        
        <label>Experience (Years):</label>
        <input type="number" name="experience" value="${employeeJob.experience}" required>
        
        <label>Phone Number:</label>
        <input type="text" name="phone_no" value="${employeeJob.phone_no}" required>
        
        <label>Email:</label>
        <input type="email" name="email" value="${employeeJob.email}" required>
        
        <button type="submit">Update Profile</button>
    </form>
</div>

</body>
</html>