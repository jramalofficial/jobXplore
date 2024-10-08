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
    <title>Employee Details</title>
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
        table {
            width: 90%;
            margin: 0 auto;
            border-collapse: collapse;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
            background-color: #fff;
            color: #333;
        }
        th {
            background-color: #007BFF;
            color: white;
            text-transform: uppercase;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        a {
            color: #007BFF;
            text-decoration: none;
            padding: 6px 12px;
            border: 1px solid #007BFF;
            border-radius: 4px;
            transition: background-color 0.3s, color 0.3s;
        }
        a:hover {
            background-color: #007BFF;
            color: white;
        }
        .alert {
            text-align: center;
            margin-bottom: 20px;
            padding: 10px;
            background-color: #d4edda;
            color: #155724;
            border: 1px solid #c3e6cb;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <div class="alert">
        
    </div>
    <h2>Employee Details</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>City</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <%
                // Database connection parameters
                String url = "jdbc:mysql://localhost:3306/ak";
                String username = "root";
                String password = "root";

                // SQL query to fetch employee details
                String query = "SELECT id, name, city FROM employee";
                Connection con = null;
                PreparedStatement pst = null;
                ResultSet rs = null;

                try {
                    // Load the MySQL driver
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    con = DriverManager.getConnection(url, username, password);
                    pst = con.prepareStatement(query);
                    rs = pst.executeQuery();

                    // Loop through the result set and display the data in the table
                    while (rs.next()) {
                        int id = rs.getInt("id");
                        String name = rs.getString("name");
                        String city = rs.getString("city");
            %>
            <tr>
                <td><%= id %></td>
                <td><%= name %></td>
                <td><%= city %></td>
                <td><a href="updateEmployee.jsp?id=<%= id %>">Update</a></td>
                <td><a href="deleteEmployee.jsp?id=<%= id %>" onclick="return confirm('Are you sure you want to delete this employee?');">Delete</a></td>
            </tr>
            <%
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
        </tbody>
    </table>
</body>
</html>
