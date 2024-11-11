<!DOCTYPE html>
<html>
<head>
    <title>Employee Job List</title>
</head>
<body>
    <h2>Employee Job List</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Job Title</th>
            <th>Location</th>
            <th>Experience</th>
            <th>Phone Number</th>
            <th>Email</th>
            <th>Actions</th>
        </tr>
        <tr th:each="job : ${employeeJobs}">
            <td th:text="${job.id}"></td>
            <td th:text="${job.name}"></td>
            <td th:text="${job.job_title}"></td>
            <td th:text="${job.location}"></td>
            <td th:text="${job.experience}"></td>
            <td th:text="${job.phone_no}"></td>
            <td th:text="${job.email}"></td>
            <td>
                <a th:href="@{/editEmployeeJob/{id}(id=${job.id})}">Edit</a>
                <a th:href="@{/deleteEmployeeJob/{id}(id=${job.id})}" onclick="return confirm('Are you sure you want to delete this job?');">Delete</a>
            </td>
        </tr>
    </table>
</body>
</html>
