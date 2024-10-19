<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Company Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 400px;
            margin: 100px auto;
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
        .profile-info {
            margin-bottom: 15px;
        }
        .profile-info label {
            font-weight: bold;
            color: #555;
        }
        .profile-info p {
            margin: 5px 0;
            color: #333;
        }
        .logout {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            padding: 10px 15px;
            background-color: #ff4c4c;
            color: white;
            border-radius: 4px;
            transition: background-color 0.3s;
        }
        .logout:hover {
            background-color: #e03e3e;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Company Profile</h2>
    <div class="profile-info">
        <label>Name:</label>
        <p>${company.name}</p>
    </div>
    <div class="profile-info">
        <label>Email:</label>
        <p>${company.email}</p>
    </div>
    <div class="profile-info">
        <label>Phone Number:</label>
        <p>${company.phoneNumber}</p>
    </div>
    <div class="profile-info">
        <label>Location:</label>
        <p>${company.location}</p>
    </div>
    <a class="logout" href="/company/login">Logout</a>
</div>
</body>
</html>
