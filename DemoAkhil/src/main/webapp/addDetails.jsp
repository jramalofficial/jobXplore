<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("id"));
String name=request.getParameter("name");
String city=request.getParameter("city");

String url="jdbc:mysql://localhost:3306/ak";
String username="root";
String password="root";

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,username,password);
	
	String insertSql="insert into employee(id,name,city) values(?,?,?)";
	PreparedStatement prd=con.prepareStatement(insertSql);
	prd.setInt(1,id);
	prd.setString(2,name);
	prd.setString(3,city);
	int rs=prd.executeUpdate();
	if(rs>0){
		
		response.sendRedirect("empDetails.jsp");
		return;
		
	}
	else{
		out.println("Data Not Sucessfully Registered");
	}
}
catch(Exception e){
	out.println(e);
}
%>
</body>
</html>