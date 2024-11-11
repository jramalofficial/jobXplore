<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add/Update Company</title>
<style>
/* General body styling */
body {
    font-family: 'Arial', sans-serif;
    margin: 0;
    overflow: hidden;
    height: 100vh;
    position: relative; /* Position relative for the overlay */
}

/* Background image */
body::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: url('https://example.com/your-background-image.jpg') no-repeat center center; /* Change this URL to your image */
    background-size: cover;
    z-index: -1; /* Position it behind the content */
}

/* Overlay with gradient */
@keyframes gradient {
    0% { background-color: rgba(255, 106, 106, 0.5); }
    25% { background-color: rgba(255, 183, 77, 0.5); }
    50% { background-color: rgba(106, 148, 255, 0.5); }
    75% { background-color: rgba(93, 236, 181, 0.5); }
    100% { background-color: rgba(255, 106, 106, 0.5); }
}

body::after {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: linear-gradient(270deg, rgba(255, 106, 106, 0.5), rgba(255, 183, 77, 0.5), rgba(106, 148, 255, 0.5), rgba(93, 236, 181, 0.5), rgba(255, 106, 106, 0.5));
    background-size: 400% 400%;
    animation: gradient 15s ease infinite;
    z-index: -1; /* Position it behind the content */
}

/* Container for the form */
.form-container {
    background-color: rgba(255, 255, 255, 0.9);
    padding: 40px 60px;
    border-radius: 12px;
    box-shadow: 0 4px 30px rgba(0, 0, 0, 0.2);
    width: 100%;
    max-width: 450px;
    margin: auto;
    text-align: center;
    animation: fadeIn 1s ease forwards;
    opacity: 0;
}

/* Fade-in animation */
@keyframes fadeIn {
    to {
        opacity: 1;
    }
}

/* Styling for the heading */
h2 {
    color: #4CAF50;
    font-size: 28px;
    margin-bottom: 20px;
}

/* Input field styling */
label {
    display: block;
    font-size: 14px;
    color: #555;
    margin-bottom: 8px;
    text-align: left;
}

input[type="text"],
input[type="email"],
input[type="number"] {
    width: 100%;
    padding: 12px 15px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 6px;
    box-sizing: border-box;
    font-size: 14px;
    transition: border-color 0.3s, transform 0.3s;
}

input[type="text"]:focus,
input[type="email"]:focus,
input[type="number"]:focus {
    border-color: #4CAF50;
    transform: scale(1.02);
}

/* Submit button styling */
.submit-btn {
    width: 100%;
    padding: 12px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 6px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.2s ease;
}

.submit-btn:hover {
    background-color: #45a049;
    transform: translateY(-2px);
}

/* Error message styling */
.error-message {
    color: red;
    margin-bottom: 20px;
}

/* Responsive design */
@media (max-width: 500px) {
    .form-container {
        padding: 30px;
    }

    h2 {
        font-size: 24px;
    }
}
</style>
</head>
<body>

<div class="form-container">
    <h2>${company.comp_id == null ? 'Add Company' : 'Company Details'}</h2> <!-- Add/Edit heading -->
    <c:if test="${not empty message}">
        <div class="error-message">${message}</div>
    </c:if>
    <form action="saveCompany" method="post">
        <!-- Hidden input for company ID -->
        <input type="hidden" id="comp_id" name="comp_id" value="${company.comp_id}">
        
        <label for="comp_name"><i class="fas fa-building"></i> Company Name:</label>
        <input type="text" id="comp_name" name="comp_name" required value="${company.comp_name != null ? company.comp_name : ''}">

        <label for="comp_email"><i class="fas fa-envelope"></i> Company Email:</label>
        <input type="email" id="comp_email" name="comp_email" required value="${company.comp_email != null ? company.comp_email : ''}">
        
        <label for="password"><i class="fas fa-lock"></i> Password:</label>
        <input type="text" id="password" name="password" required value="${company.password != null ? company.password : ''}">

        <label for="contact_no"><i class="fas fa-phone"></i> Contact Number:</label>
        <input type="number" id="contact_no" name="contact_no" required value="${company.contact_no != null ? company.contact_no : ''}">

        <label for="comp_location"><i class="fas fa-map-marker-alt"></i> Company Location:</label>
        <input type="text" id="comp_location" name="comp_location" required value="${company.comp_location != null ? company.comp_location : ''}">

        <input type="submit" value="Sign Up" class="submit-btn">
    </form>
</div>

</body>
</html>
