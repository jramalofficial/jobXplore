<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Portal</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            color: #333;
        }

        /* Header / Navigation */
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            background-color: #4b2a2a;
            color: white;
        }

        .logo {
            font-size: 24px;
            font-weight: bold;
        }

        nav ul {
            display: flex;
            list-style-type: none;
        }

        nav ul li {
            margin: 0 15px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
        }

        .login-buttons {
            display: flex;
        }

        .login-buttons a {
            margin-left: 15px;
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            background-color: #00796b;
            border-radius: 5px;
        }

        .login-buttons a:hover {
            background-color: #004d40;
        }

        /* Hero Section */
        .hero {
            text-align: center;
            padding: 80px 20px;
            background-color: #fafafa;
        }

        .hero h1 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 1.2rem;
            color: #666;
            margin-bottom: 30px;
        }

        /* Search Bar */
        .search-container {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin-bottom: 30px;
        }

        .search-container input, select {
            padding: 10px;
            width: 200px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .search-container button {
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .search-container button:hover {
            background-color: #218838;
        }

        /* Recent Jobs Section */
        .recent-jobs {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin-top: 50px;
        }

        .job-card {
            background-color: white;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 150px;
        }

        .job-card p {
            font-size: 0.9rem;
        }

        .job-card img {
            width: 50px;
            border-radius: 50%;
            margin-bottom: 10px;
        }

        /* Footer */
        footer {
            padding: 20px;
            text-align: center;
            background-color: #333;
            color: white;
        }

        footer a {
            color: #bbb;
            text-decoration: none;
        }

        footer a:hover {
            color: white;
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <header>
        <div class="logo">Job Portal</div>
        <nav>
            <ul>
                <li><a href="#">Jobs</a></li>
                <li><a href="#">Career Compass</a></li>
                <li><a href="#">Community</a></li>
                <li><a href="#">Learn</a></li>
            </ul>
        </nav>
        <div class="login-buttons">
            <a href="/addCompany">Company Login</a>
            <a href="/addEmployee">Candidate Login</a>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <h1>Your job search ends here</h1>
        <p>Discover 50 lakh+ career opportunities</p>

        <!-- Search Bar -->
        <div class="search-container">
            <input type="text" placeholder="Search jobs by 'company', 'title'">
            <select>
                <option>Your Experience</option>
                <option>Fresher</option>
                <option>1-3 Years</option>
                <option>3+ Years</option>
            </select>
            <input type="text" placeholder="Search for area or location">
            <button>Search Jobs</button>
        </div>
    </section>

    <!-- Recent Jobs Section -->
    <div class="recent-jobs">
        <div class="job-card">
            <img src="https://via.placeholder.com/50" alt="User">
            <p>Suman Biswas got a job 3 hours ago</p>
        </div>
        <div class="job-card">
            <img src="https://via.placeholder.com/50" alt="User">
            <p>Swathi fixed an interview</p>
        </div>
        <div class="job-card">
            <img src="https://via.placeholder.com/50" alt="User">
            <p>Foridul got a job 6 hours ago</p>
        </div>
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 Job Portal. All rights reserved.</p>
        <p><a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a> | <a href="#">Contact</a></p>
    </footer>

</body>
</html>
