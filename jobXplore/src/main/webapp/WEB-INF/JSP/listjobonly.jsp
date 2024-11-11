<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Jobs</title>
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
        .add-job-btn, .edit-profile-btn {
            margin-bottom: 20px;
            display: inline-block;
            padding: 10px 20px;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .add-job-btn {
            background-color: #007BFF;
        }
        .edit-profile-btn {
            background-color: #FF5733;
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
    <h2>Jobs</h2>

    <!-- Edit Profile Button -->
    <a href="profile" class="edit-profile-btn">Edit Profile</a>

    <!-- Add Job Button -->
   <!--  <a href="add" class="add-job-btn">Add New Job</a> -->

    <table>
        <thead>
            <tr>
                <th>Job Title</th>
                <th>Description</th>
                <th>Location</th>
                <th>Experience</th>
                <th>Salary</th>
                <th>Actions</th>
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
                    <td>
                        <%-- <a href="/jobs/edit/${job.job_id}" class="action-btn">Edit</a>
                        <a href="/jobs/delete/${job.job_id}" class="action-btn" style="background-color: red;">Delete</a> --%>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
