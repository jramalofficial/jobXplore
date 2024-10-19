<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        label {
            font-weight: bold;
            color: #555;
        }
        input[type="text"],
        input[type="email"] {
            width: calc(100% - 22px); /* Full width minus padding and border */
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box; /* Ensure padding is included in total width */
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: #007BFF;
            font-weight: bold;
        }
        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Edit Your Profile</h2>
    <form action="/employee/updateProfile" method="post">
        <input type="hidden" name="id" value="${employee.id}"> <!-- Add this hidden field -->
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${employee.name}" required>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${employee.email}" required>
        
        <label for="jobTitle">Job Title:</label>
        <input type="text" id="jobTitle" name="jobTitle" value="${employee.jobTitle}" required>
        
        <label for="experience">Experience:</label>
        <input type="text" id="experience" name="experience" value="${employee.experience}" required>
        
        <label for="phoneNo">Phone No:</label>
        <input type="text" id="phoneNo" name="phoneNo" value="${employee.phoneNo}" required>
        
        <label for="location">Location:</label>
        <input type="text" id="location" name="location" value="${employee.location}" required>
        
        <input type="submit" value="Update Profile">
    </form>
    
</div>
</body>
</html>

