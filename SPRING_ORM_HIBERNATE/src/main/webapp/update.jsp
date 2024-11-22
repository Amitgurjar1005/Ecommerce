<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
        input[type="text"] {
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

        <form:form action="productsave2" modelAttribute="p">
            <label for="pname">Product Name:</label>
            <form:input path="pname" id="pname" required="true"/>

            <label for="price">Price:</label>
            <form:input path="price" id="price" required="true"/>

            <label for="discount">Discount:</label>
            <form:input path="discount" id="discount" required="true"/>

            <label for="ecode">Product Code:</label>
            <form:input path="ecode" id="ecode" required="true"/>

            <input type="submit" value="Submit">
        </form:form>

        <a class="logout" href="search.jsp">Logout</a>
    </div>
</body>
</html>
