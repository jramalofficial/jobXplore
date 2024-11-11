<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Jobs List</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/style.css' />">
</head>
<body>
    <h2>Employee Jobs List</h2>

    <!-- Button to add a new Employee Job -->
    <a href="addEmployeeJob" class="btn btn-primary">Add New Job</a>

    <!-- Table to display the list of employee jobs -->
    <table border="1" cellpadding="5" cellspacing="0">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Job Title</th>
                <th>Location</th>
                <th>Experience</th>
                <th>Phone No</th>
                <th>Email</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <!-- Loop through the list of employee jobs -->
            <c:forEach var="employeeJob" items="${employeeJobs}">
                <tr>
                    <td>${employeeJob.id}</td>
                    <td>${employeeJob.name}</td>
                    <td>${employeeJob.job_title}</td>
                    <td>${employeeJob.location}</td>
                    <td>${employeeJob.experience}</td>
                    <td>${employeeJob.phone_no}</td>
                    <td>${employeeJob.email}</td>
                    <td>
                         <!-- Edit Button -->
                        <a href="${pageContext.request.contextPath}/editEmployeeJob?id=${employeeJob.id}" class="btn btn-warning">Edit</a>

                        <!-- Delete Button -->
                        <a href="${pageContext.request.contextPath}/deleteEmployeeJob?id=${employeeJob.id}" class="btn btn-danger"
                           onclick="return confirm('Are you sure you want to delete this job?');">Delete</a> 
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
