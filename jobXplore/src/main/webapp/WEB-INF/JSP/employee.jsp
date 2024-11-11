<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee List</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
    </style>
</head>
<body>
    <h1>Employee List</h1>
    <table id="employeeTable">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone No</th>
                <th>Location</th>
            </tr>
        </thead>
        <tbody>
            <!-- Employee rows will be added here -->
        </tbody>
    </table>

    <script>
        fetch('/employees')
            .then(response => response.json())
            .then(data => {
                const tableBody = document.getElementById('employeeTable').querySelector('tbody');
                data.forEach(employee => {
                    const row = document.createElement('tr');
                    row.innerHTML = `
                        <td>${employee.emp_id}</td>
                        <td>${employee.emp_name}</td>
                        <td>${employee.email}</td>
                        <td>${employee.phone_no}</td>
                        <td>${employee.location}</td>
                    `;
                    tableBody.appendChild(row);
                });
            });
    </script>
</body>
</html>