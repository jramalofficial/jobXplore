<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Candidate Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .action-btn {
            padding: 5px 10px;
            color: white;
            background-color: #4CAF50;
            text-decoration: none;
            border-radius: 5px;
        }
        .action-btn:hover {
            background-color: #45a049;
        }
        .profile-btn {
            margin: 20px;
            display: inline-block;
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            float: right; /* Align to the right */
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
    </style>
</head>
<body>
    <h2>Welcome</h2>

    <!-- Profile Button -->
    <a href="/addEmployeeJob" class="profile-btn">Profile</a>

    <table>
        <thead>
            <tr>
                <th>Job Title</th>
                <th>Description</th>
                <th>Location</th>
                <th>Experience</th>
                <th>Salary</th>
                
            </tr>
        </thead>
        <tbody>
            <c:forEach var="job" items="${jobs}">
                <tr>
                    <td>${job.job_title}</td>
                    <td>${job.job_description}</td>
                    <td>${job.job_location}</td>
                    <td>${job.job_experience}</td>
                    <td>${job.salary}</td>
                  
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
