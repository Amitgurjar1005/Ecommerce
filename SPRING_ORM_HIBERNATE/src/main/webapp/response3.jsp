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
<div class="product-info">
    <h1>Product Details</h1>
    <p><strong>EmpId:</strong> ${p != null ? p.empid : 'N/A'}</p>
    <p><strong>Emp password:</strong> ${p != null ? p.emppassword : 'N/A'}</p>
  <p><strong>Address:</strong> ${p != null ? p.address : 'N/A'}</p>
  
    <p><strong>Contact no:</strong> ${p != null ? p.contactno : 'N/A'}</p>
    <p><strong>Email:</strong> ${p != null ? p.email : 'N/A'}</p>
     <p><strong>EmpName:</strong> ${p != null ? p.empname : 'N/A'}</p>
</div>
<a href="EmplyoeeData.jsp">Emplyoee Entry Form</a>
</body>
</html>

