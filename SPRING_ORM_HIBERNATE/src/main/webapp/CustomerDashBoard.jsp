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
        input[type="text"], input[type="password"] {
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
        <h3>Customer Update Form</h3>

        <form:form action="customerupdate2" modelAttribute="p">
            <label for="customerid">Customer ID:</label>
            <form:input path="customerid" id="customerid" required="true"/>

            <label for="password">Password:</label>
            <form:input type="password" path="password" id="password" required="true"/>

            <label for="Address">Address:</label>
            <form:input path="Address" id="Address" required="true"/>

            <label for="email">Email:</label>
            <form:input path="email" id="email" required="true"/>

            <label for="mobileno">Mobile No:</label>
            <form:input path="mobileno" id="mobileno" required="true"/>

            <label for="cname">Customer Name:</label>
            <form:input path="cname" id="cname" required="true"/>
            
            <input type="submit" value="Submit">
        </form:form>

        <a class="logout" href="customerinterface.jsp">Logout</a>
    </div>
</body>
</html>
