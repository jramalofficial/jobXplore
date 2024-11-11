<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Employee Job</title>
</head>
<body>
    <h2>Add New Employee Job</h2>

    <form action="/saveEmployeeJob" method="post">
        <label>Name:</label>
        <input type="text" name="name" required><br>

        <label>Job Title:</label>
        <input type="text" name="job_title" required><br>

        <label>Location:</label>
        <input type="text" name="location" required><br>

        <label>Experience:</label>
        <input type="number" name="experience" required><br>

        <label>Phone No:</label>
        <input type="text" name="phone_no" required><br>

        <label>Email:</label>
        <input type="email" name="email" required><br>

        <button type="submit">Save</button>
    </form>
</body>
</html>
