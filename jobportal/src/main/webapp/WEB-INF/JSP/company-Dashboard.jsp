<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Company Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        h2 {
            color: #333;
            text-align: center;
        }
        h3 {
            color: #007BFF;
            margin-top: 30px;
            text-align: center;
        }
        .container {
            max-width: 800px;
            margin: auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            position: relative;
        }
        .button-group {
            display: flex;
            justify-content: flex-end;
            margin-bottom: 20px;
        }
        .view-profile, .logout {
            padding: 10px 15px;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-left: 10px; /* Spacing between buttons */
        }
        .view-profile {
            background-color: #28a745; /* Green background */
        }
        .view-profile:hover {
            background-color: #218838; /* Darker green on hover */
        }
        .logout {
            background-color: #dc3545; /* Red background */
        }
        .logout:hover {
            background-color: #c82333; /* Darker red on hover */
        }
        .job-list {
            margin-top: 20px;
        }
        .job {
            background: #f9f9f9;
            padding: 15px;
            margin-bottom: 15px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .button {
            padding: 10px 15px;
            margin: 10px 5px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .button:hover {
            background-color: #0056b3;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
        }
        input[type="text"],
        input[type="email"],
        input[type="date"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            transition: border 0.3s;
        }
        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="date"]:focus {
            border: 1px solid #007BFF;
            outline: none;
        }
        .job-title {
            color: #007BFF;
            margin: 0 0 10px;
        }
        .logout-button {
    margin-left: auto; /* Pushes the logout button to the far right */
    margin-right: 0; /* Ensures no extra space on the right */
}
    </style>
</head>
<body>
    <div class="container">
        <h2>Welcome to the Company Dashboard</h2>
        
        <!-- View Profile and Logout Buttons -->
        <div class="button-group">
            <form action="/company/viewProfile" method="get" style="display:inline;">
                <input type="hidden" name="email" value="${email}">
                <input type="submit" value="View Profile" class="view-profile">
            </form>
             <a href="/home1" class="button logout-button">Logout</a>
        </div>

        <h3>Add a New Job</h3>
        <form action="/company/addJob" method="post">
            <div class="form-group">
                <label for="companyName">Company Name:</label>
                <input type="text" name="companyName" required>
            </div>
            <div class="form-group">
                <label for="jobTitle">Job Title:</label>
                <input type="text" name="jobTitle" required>
            </div>
            <div class="form-group">
                <label for="jobDescription">Job Description:</label>
                <input type="text" name="jobDescription" required>
            </div>
            <div class="form-group">
                <label for="experience">Experience:</label>
                <input type="text" name="experience" required>
            </div>
            <div class="form-group">
                <label for="date">Date:</label>
                <input type="date" name="date" required>
            </div>
            <div class="form-group">
                <label for="phoneNumber">Phone Number:</label>
                <input type="text" name="phoneNumber" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" name="email" value="${email}" readonly>
            </div>
            <input type="submit" value="Add Job" class="button">
        </form>

        <h3>Your Job Listings</h3>
        <div class="job-list">
            <c:forEach var="job" items="${jobList}">
                <div class="job">
                    <h4 class="job-title">${job.jobTitle}</h4>
                    <p><strong>Company:</strong> ${job.companyName}</p>
                    <p><strong>Description:</strong> ${job.jobDescription}</p>
                    <p><strong>Experience Required:</strong> ${job.experience}</p>
                    <p><strong>Date Posted:</strong> ${job.date}</p>
                    <p><strong>Contact Phone:</strong> ${job.phoneNumber}</p>
                    <p><strong>Contact Email:</strong> ${job.email}</p>

                    <form action="/company/editJob" method="get" style="display:inline;">
                        <input type="hidden" name="id" value="${job.id}">
                        <input type="hidden" name="email" value="${email}">
                        <input type="submit" value="Edit" class="button">
                    </form>
                    <form action="/company/deleteJob" method="post" style="display:inline;">
                        <input type="hidden" name="jobId" value="${job.id}">
                        <input type="hidden" name="email" value="${email}">
                        <input type="submit" value="Delete Job" class="button">
                    </form>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>
