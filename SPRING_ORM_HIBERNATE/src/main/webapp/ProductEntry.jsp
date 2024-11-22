<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Entry Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        h3 {
            text-align: center;
            color: #333;
        }
        .container {
            max-width: 400px;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
        }
        input[type="text"], input[type="file"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #5cb85c;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }
        input[type="submit"]:hover {
            background-color: #4cae4c;
        }
        .logout {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #007bff;
            text-decoration: none;
        }
        .logout:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h3>Product Entry Form</h3>
        <form action="productsave">
            <label for="pname">Product Name:</label>
            <input type="text" name="pname" id="pname" required>

            <label for="price">Price:</label>
            <input type="text" name="price" id="price" required>

            <label for="discount">Discount:</label>
            <input type="text" name="discount" id="discount" required>

            <label for="ecode">Product Code:</label>
            <input type="text" name="ecode" id="ecode" required>


            <input type="submit" value="Submit">
        </form>
        <a class="logout" href="search.jsp">Logout</a>
    </div>
 
</body>
</html>
