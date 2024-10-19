<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Job Portal</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #fff;
        }
        h1 {
            font-size: 3em;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
        }
        .container {
            text-align: center;
        }
        .button {
            background-color: #fff;
            color: #6a11cb;
            border: none;
            border-radius: 25px;
            padding: 15px 30px;
            margin: 10px 20px;
            font-size: 1.2em;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }
        .button:hover {
            background-color: #6a11cb;
            color: #fff;
            transform: translateY(-2px);
        }
        .button:focus {
            outline: none;
        }
        .footer {
            position: absolute;
            bottom: 20px;
            text-align: center;
            color: #fff;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Job Portal</h1>
        <p>Please select your role to log in</p>
        <form action="/employee/login" method="get" style="display:inline;">
            <input type="submit" value="Employee Login" class="button">
        </form>
        <form action="/company/login" method="get" style="display:inline;">
            <input type="submit" value="Company Login" class="button">
        </form>
    </div>
    <div class="footer">
        <p>&copy; 2024 Your Company Name. All Rights Reserved.</p>
    </div>
</body>
</html>
