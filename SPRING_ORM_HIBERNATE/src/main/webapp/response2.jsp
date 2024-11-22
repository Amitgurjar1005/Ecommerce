<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .product-info {
            border: 1px solid #ccc;
            padding: 15px;
            border-radius: 5px;
            max-width: 400px;
        }
        h1 {
            color: #333;
        }
    </style>
</head>
<body>
<h3>Data Store Successfully</h3>
    <div class="Customer-info">
        <h1>Customer details</h1>
        <p><strong>Customer id:</strong> ${p != null ? p.customerid : 'N/A'}</p>
        <p><strong>Customer name :</strong> ${p != null ? p.cname : 'N/A'}</p>
        <p><strong>Password:</strong> ${p != null ? p.password : 'N/A'}</p>
        <p><strong>Email:</strong> ${p != null ? p.email : 'N/A'}</p>
         <p><strong>Aaddress:</strong> ${p != null ? p.address : 'N/A'}</p>
        <p><strong>Mobileno:</strong> ${p != null ? p.mobileno : 'N/A'}</p>
    </div>
        <p><a href="home.jsp">home</a></p
       
</body>
</html>