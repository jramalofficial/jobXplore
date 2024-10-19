<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Company Profile</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
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
            margin-bottom: 20px;
        }
        .profile-container {
            max-width: 600px;
            margin: auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .profile-container p {
            font-size: 16px;
            color: #555;
            margin: 10px 0;
        }
        .button {
            padding: 10px 15px;
            margin-top: 20px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            display: inline-block;
        }
        .button:hover {
            background-color: #0056b3;
        }
        .back-button {
            background-color: #6c757d; /* Grey background */
            margin-top: 10px; /* Space between buttons */
        }
        .back-button:hover {
            background-color: #5a6268; /* Darker grey on hover */
        }
        .footer {
            text-align: center;
            margin-top: 30px;
            color: #777;
        }
    </style>
</head>
<body>
    <div class="profile-container">
        <h2>Company Profile</h2>
        <p><strong>Company Name:</strong> ${company.name}</p>
        <p><strong>Email:</strong> ${company.email}</p>
        <p><strong>Phone Number:</strong> ${company.phoneNumber}</p>
        <p><strong>Location:</strong> ${company.location}</p>

        <form action="/company/editProfile" method="get" style="display:inline;">
            <input type="hidden" name="email" value="${company.email}">
            <input type="submit" value="Edit Profile" class="button">
        </form>
        <form action="/company/dashboard" method="get" style="display:inline;">
            <input type="hidden" name="email" value="${company.email}"> <!-- Pass email for redirection -->
            <input type="submit" value="Back to Dashboard" class="button back-button">
        </form>
    </div>
    <div class="footer">
        <p>&copy; 2024 Your Company Name</p>
    </div>
</body>
</html>
