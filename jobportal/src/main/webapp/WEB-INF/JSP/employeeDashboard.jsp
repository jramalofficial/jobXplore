<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        h2 {
            color: #333;
            font-size: 28px;
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            border-radius: 5px;
        }
        .header .buttons {
            display: flex;
            gap: 10px;
        }
        .job-list {
            margin-top: 20px;
        }
        .job {
            background: #fff;
            padding: 20px;
            margin-bottom: 15px;
            border-radius: 5px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
        }
        .job:hover {
            transform: scale(1.02);
        }
        h3 {
            color: #007BFF;
            margin-bottom: 10px;
        }
        p {
            margin: 5px 0;
            color: #555;
        }
        .button {
            padding: 10px 15px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s, transform 0.2s;
        }
        .button:hover {
            background-color: #218838;
            transform: scale(1.05);
        }
        .logout-button {
            background-color: #dc3545;
        }
        .logout-button:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <div class="header">
        <h2>Welcome</h2>
        <div class="buttons">
            <a href="/employee/viewProfile?id=${employee.id}" class="button">View Profile</a>
            <a href="/" class="button logout-button">Logout</a> <!-- Added Logout Button -->
        </div>
    </div>

    <h3>Available Jobs</h3>
    <div class="job-list">
        <c:forEach var="job" items="${jobList}">
            <div class="job">
                <h4>${job.jobTitle}</h4>
                <p><strong>Company:</strong> ${job.companyName}</p>
                <p><strong>Description:</strong> ${job.jobDescription}</p>
                <p><strong>Experience Required:</strong> ${job.experience}</p>
                <p><strong>Date Posted:</strong> ${job.date}</p>
                <p><strong>Contact Phone:</strong> ${job.phoneNumber}</p>
                <p><strong>Contact Email:</strong> ${job.email}</p>
            </div>
        </c:forEach>
    </div>
</body>
</html>
