<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        p {
            color: #555;
            margin: 10px 0;
            font-size: 16px;
        }
        .button {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            background-color: #007bff;
            color: white;
            padding: 12px 20px;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s, transform 0.2s;
        }
        .button:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Employee Profile</h2>
    <p><strong>Name:</strong> ${employee.name}</p>
    <p><strong>Email:</strong> ${employee.email}</p>
    <p><strong>Job Title:</strong> ${employee.jobTitle}</p>
    <p><strong>Experience:</strong> ${employee.experience}</p>
    <p><strong>Phone No:</strong> ${employee.phoneNo}</p>
    <p><strong>Location:</strong> ${employee.location}</p>
    <a class="button" href="/employee/updateProfile?id=${employee.id}">Edit Profile</a>
    <a class="button" href="/employee/dashboard?id=${employee.id}">Back to Dashboard</a>
</div>
</body>
</html>
