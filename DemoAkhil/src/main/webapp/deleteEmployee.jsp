<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Employee</title>
</head>
<body>
<%
    // Database connection parameters
    String url = "jdbc:mysql://localhost:3306/ak";
    String username = "root";
    String password = "root";

    // Get the ID from the request
    String id = request.getParameter("id");

    Connection con = null;
    PreparedStatement pst = null;

    try {
        // Load the MySQL driver
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection(url, username, password);

        // SQL query to delete the employee record
        String query = "DELETE FROM employee WHERE id = ?";
        pst = con.prepareStatement(query);
        pst.setInt(1, Integer.parseInt(id));

        int rowsDeleted = pst.executeUpdate();
        if (rowsDeleted > 0) {
            out.println("<h2>Employee successfully deleted!</h2>");
            response.sendRedirect("empDetails.jsp");
        } else {
            out.println("<h2>Delete failed. No employee found with that ID.</h2>");
        }
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    } finally {
        // Close resources
        if (pst != null) try { pst.close(); } catch (Exception e) {}
        if (con != null) try { con.close(); } catch (Exception e) {}
    }
%>
</body>
</html>
