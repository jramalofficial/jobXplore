<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Job List</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/style.css' />">
</head>
<body>
    <h2>Employee Job List</h2>
    <a href="${pageContext.request.contextPath}/addEmployeeJob" class="btn btn-primary">Add New Job</a>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Job Title</th>
                <th>Location</th>
                <th>Experience</th>
                <th>Phone Number</th>
                <th>Email</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="employeeJob" items="${employeeJobs}">
                <tr>
                    <td>${employeeJob.id}</td>
                    <td>${employeeJob.name}</td>
                    <td>${employeeJob.job_title}</td>
                    <td>${employeeJob.location}</td>
                    <td>${employeeJob.experience}</td>
                    <td>${employeeJob.phone_no}</td>
                    <td>${employeeJob.email}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/editEmployeeJob/${employeeJob.id}" class="btn btn-warning">Edit</a>
                        <a href="${pageContext.request.contextPath}/deleteEmployeeJob/${employeeJob.id}" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this job?');">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>