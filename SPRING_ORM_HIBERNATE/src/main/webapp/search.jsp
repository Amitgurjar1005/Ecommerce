<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-commerce Management</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #007bff;
            color: white;
            padding: 20px;
            text-align: center;
        }
        h1 {
            margin: 0;
        }
        .container {
            max-width: 900px;
            margin: 20px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        h3 {
            color: #333;
            margin-top: 20px;
        }
        form {
            margin-bottom: 20px;
        }
        input[type="text"] {
            width: calc(100% - 22px);
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-right: 10px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
        a {
            display: inline-block;
            margin-top: 10px;
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
            transition: color 0.3s;
        }
        a:hover {
            color: #0056b3;
        }
        .product-image {
            width: 100%;
            max-width: 500px; /* Increased maximum width */
            height: auto; /* Maintain aspect ratio */
            border-radius: 5px;
            margin-top: 20px;
        }
        .footer {
            text-align: center;
            padding: 20px;
            background-color: #f1f1f1;
            margin-top: 20px;
            border-radius: 0 0 8px 8px;
        }
    </style>
</head>
<body>
    <header>
        <h1>E-commerce Management</h1>
        <img src="https://cdn.pixabay.com/photo/2017/03/13/17/26/ecommerce-2140603_640.jpg" alt="E-commerce Logo" class="product-image">
    </header>
    
    <div class="container">
        <h3>Search Product</h3>
        <form action="search">
            <input type="text" name="ecode" placeholder="Enter product code">
            <input type="submit" value="Search">
        </form>

        <h3>Product Delete Form</h3>
        <form action="productdelete">
            <input type="text" name="ecode" placeholder="Enter product code to delete">
            <input type="submit" value="Delete">
        </form>

        <a href="productall">View All Products</a>
        <a href="ProductEntry.jsp">Entry New Product details</a>
        <h3>Featured Products</h3>
        <img src="https://www.shutterstock.com/image-vector/branding-icon-set-containing-marketing-260nw-2243350473.jpg" alt="Featured Product" class="product-image">
    </div>
    
    <div class="footer">
        <p>&copy; 2024 E-commerce Management. All rights reserved.</p>
    </div>
</body>
</html>
