<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Job</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f4f4; padding: 20px; }
        h2 { color: #333; }
        form { background: #fff; padding: 20px; border-radius: 5px; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); }
        input[type="text"], input[type="email"], input[type="date"] {
            width: 100%; padding: 10px; margin: 10px 0; border: 1px solid #ccc; border-radius: 5px;
        }
        .button {
            padding: 10px 15px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .button:hover { background-color: #0056b3; }
    </style>
</head>
<body>
    <h2>Edit Job</h2>
    <form action="/company/editJob" method="post">
        <input type="hidden" name="id" value="${job.id}">
        Company Name: <input type="text" name="companyName" value="${job.companyName}" required><br>
        Job Title: <input type="text" name="jobTitle" value="${job.jobTitle}" required><br>
        Job Description: <input type="text" name="jobDescription" value="${job.jobDescription}" required><br>
        Experience: <input type="text" name="experience" value="${job.experience}" required><br>
        Date: <input type="date" name="date" value="${job.date}" required><br>
        Phone Number: <input type="text" name="phoneNumber" value="${job.phoneNumber}" required><br>
        Email: <input type="email" name="email" value="${job.email}" required><br>
        <input type="submit" value="Update Job" class="button">
    </form>
    <a href="/company/dashboard?email=${email}">Back to Dashboard</a>
</body>
</html>
