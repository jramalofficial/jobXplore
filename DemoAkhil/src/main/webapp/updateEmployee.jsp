<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Employee</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        form {
            max-width: 600px;
            margin: 0 auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        label {
            display: block;
            margin: 10px 0 5px;
        }
        input[type="text"], input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            border: none;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2>Update Employee Details</h2>
    <%
        // Database connection parameters
        String url = "jdbc:mysql://localhost:3306/ak";
        String username = "root";
        String password = "root";

        // Get the ID from the request
        String id = request.getParameter("id");
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        String name = "";
        String city = "";

        try {
            // Load the MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, username, password);

            // Fetch employee details
            String query = "SELECT name, city FROM employee WHERE id = ?";
            pst = con.prepareStatement(query);
            pst.setInt(1, Integer.parseInt(id));
            rs = pst.executeQuery();

            if (rs.next()) {
                name = rs.getString("name");
                city = rs.getString("city");
            }
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        } finally {
            // Close resources
            if (rs != null) try { rs.close(); } catch (Exception e) {}
            if (pst != null) try { pst.close(); } catch (Exception e) {}
            if (con != null) try { con.close(); } catch (Exception e) {}
        }
    %>
    
    <form method="post" action="processUpdate.jsp?id=<%= id %>">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="<%= name %>" required>

        <label for="city">City:</label>
        <input type="text" id="city" name="city" value="<%= city %>" required>

        <input type="submit" value="Update">
    </form>
</body>
</html>
