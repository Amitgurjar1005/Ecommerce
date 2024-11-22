<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Dashboard</title>
</head>
<body>
    <h3>Customer Dashboard</h3>

    <%
        // Retrieve the customerid parameter from the request
        String customerId = request.getParameter("customerid");
    %>

    <p>Customer ID: <%= customerId != null ? customerId : "No Customer ID provided" %></p>
    <a href="customerdata?customerid=<%= customerId  %>">Update your profile</a>         
</body>
</html>
