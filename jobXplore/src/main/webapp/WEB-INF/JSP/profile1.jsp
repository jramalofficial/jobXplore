<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Candidate Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }
        .profile-container {
            width: 50%;
            margin: 40px auto;
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ddd;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .detail {
            margin-bottom: 10px;
        }
        .detail label {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="profile-container">
        <h2>Candidate Profile</h2>
        <c:if test="${not empty employeeJob}">
            <div class="detail">
                <label>Name:</label> ${employeeJob.name}
            </div>
            <div class="detail">
                <label>Job Title:</label> ${employeeJob.job_title}
            </div>
            <div class="detail">
                <label>Location:</label> ${employeeJob.location}
            </div>
            <div class="detail">
                <label>Experience:</label> ${employeeJob.experience} years
            </div>
            <div class="detail">
                <label>Phone Number:</label> ${employeeJob.phone_no}
            </div>
            <div class="detail">
                <label>Email:</label> ${employeeJob.email}
            </div>
        </c:if>
        <c:if test="${not empty message}">
            <div class="error-message">${message}</div>
        </c:if>
    </div>
</body>
</html>
