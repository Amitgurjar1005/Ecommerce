<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>
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
    <div class="product-info">
        <h1>Product Delete Details</h1>
        <p><strong>Code:</strong> ${p != null ? p.ecode : 'N/A'}</p>
        <p><strong>Product Name:</strong> ${p != null ? p.pname : 'N/A'}</p>
        <p><strong>Discount:</strong> ${p != null ? p.discount : 'N/A'}</p>
        <p><strong>Price:</strong> ${p != null ? p.price : 'N/A'}</p>
    </div>
</body>
</html>