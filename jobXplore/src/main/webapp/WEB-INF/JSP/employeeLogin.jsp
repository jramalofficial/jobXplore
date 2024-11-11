<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
    }
    h2 {
        text-align: center;
        color: #333;
    }
    form {
        width: 50%;
        margin: 40px auto;
        background-color: #fff;
        padding: 20px;
        border: 1px solid #ddd;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    table {
        width: 100%;
    }
    tr {
        height: 40px;
    }
    td {
        padding: 10px;
    }
    input[type="email"], input[type="password"] {
        width: 100%;
        height: 30px;
        padding: 10px;
        border: 1px solid #ccc;
    }
    input[type="submit"] {
        width: 100%;
        height: 30px;
        padding: 10px;
        background-color: #4CAF50;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #3e8e41;
    }
    .error-message {
        color: red;
        font-size: 14px;
        margin-bottom: 20px;
    }
</style>
</head>
<body>
    <h2>Login Page</h2>
    <form action="employeedetails" method="post">
        <table>
            <tr>
                <td>Email:</td>
                <td><input type="email" name="comp_email" required></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="password" required></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Login"></td>
            </tr>
        </table>
        <c:if test="${not empty message}">
            <div class="error-message">${message}</div>
        </c:if>
    </form>
</body>
</html>