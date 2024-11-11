<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Employee Job</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/style.css' />">
</head>
<body>
    <h2>Add Employee Job</h2>

    <!-- Form to Add Employee Job -->
    <form action="/saveEmployeeJob" method="post">
        
        <!-- Name Field -->
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required/><br/><br/>
        
        <!-- Job Title Field -->
        <label for="job_title">Job Title:</label>
        <input type="text" id="job_title" name="job_title" required/><br/><br/>
        
        <!-- Location Field -->
        <label for="location">Location:</label>
        <input type="text" id="location" name="location" required/><br/><br/>
        
        <!-- Experience Field -->
        <label for="experience">Experience (years):</label>
        <input type="number" id="experience" name="experience" required/><br/><br/>
        
        <!-- Phone Number Field -->
        <label for="phone_no">Phone Number:</label>
        <input type="text" id="phone_no" name="phone_no" required/><br/><br/>
        
        <!-- Email Field -->
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required/><br/><br/>
        
        <!-- Submit Button -->
        <button type="submit" class="btn btn-success">Save Job</button>
        
        <!-- Cancel Button -->
        <a href="${pageContext.request.contextPath}/employeeJobList" class="btn btn-secondary">Cancel</a>
    </form>

    <!-- Displaying success message if any -->
    <c:if test="${not empty message}">
        <div class="alert alert-success">${message}</div>
    </c:if>
</body>
</html>
