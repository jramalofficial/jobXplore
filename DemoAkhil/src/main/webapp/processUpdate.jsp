<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Confirmation</title>
</head>
<body>
<%
    // Database connection parameters
    String url = "jdbc:mysql://localhost:3306/ak"; // Update with your database URL
    String username = "root"; // Update with your database username
    String password = "root"; // Update with your database password

    // Get the ID and updated values from the request
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String city = request.getParameter("city");

    Connection con = null;
    PreparedStatement pst = null;

    try {
        // Load the MySQL driver
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection(url, username, password);

        // Update employee details
        String query = "UPDATE employee SET name = ?, city = ? WHERE id = ?";
        pst = con.prepareStatement(query);
        pst.setString(1, name);
        pst.setString(2, city);
        pst.setInt(3, Integer.parseInt(id));

        int rowsUpdated = pst.executeUpdate();
        if (rowsUpdated > 0) {
            response.sendRedirect("empDetails.jsp");
        } else {
            out.println("<h2>Update failed. No employee found with that ID.</h2>");
        }
    } catch (Exception e) {
        out.println("<h2>Error: " + e.getMessage() + "</h2>");
    } finally {
        // Close resources
        if (pst != null) try { pst.close(); } catch (Exception e) {}
        if (con != null) try { con.close(); } catch (Exception e) {}
    }
%>
</body>
</html>
