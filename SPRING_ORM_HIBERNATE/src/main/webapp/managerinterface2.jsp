<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.productmethods" %> <!-- Adjust this import based on your actual package structure -->
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Manager Dashboard</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/style.css' />">
    <style>
        /* Global Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            background-image: url("https://cdn.retailbiz.com.au/wp-content/uploads/2020/07/15085520/Automation-iStock-1163061322-2048x1367.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            height: 100vh;
            color: #333;
        }

        /* Header Section */
        .header {
            background-color: #2980b9;
            color: white;
            padding: 20px;
            text-align: center;
            font-size: 36px;
            font-weight: bold;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        /* Sidebar Section */
        .sidebar {
            width: 250px;
            height: 100%;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #34495e;
            padding-top: 30px;
            box-shadow: 2px 0 6px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
        }
        .sidebar a {
            padding: 20px;
            text-decoration: none;
            font-size: 20px;
            color: white;
            display: block;
            border-bottom: 1px solid #2c3e50;
            transition: all 0.3s ease;
        }
        .sidebar a:hover {
            background-color: #1abc9c;
        }

        /* Main Content Section */
        .main-content {
            margin-left: 270px;
            padding: 30px;
        }

        /* Dashboard Overview */
        .overview {
            background-color: #fff;
            padding: 30px;
            margin-bottom: 30px;
            border-radius: 8px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
        }
        .overview h3 {
            margin-bottom: 20px;
            font-size: 28px;
            color: #2980b9;
        }

        /* Stats Section (Card Layout) */
        .overview .stats {
            display: flex;
            justify-content: space-between;
            gap: 20px;
            flex-wrap: wrap;
        }

        .overview .stats div {
            background-color: #ecf0f1;
            padding: 30px;
            text-align: center;
            border-radius: 10px;
            width: 30%;
            box-sizing: border-box;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            cursor: pointer;
            transition: transform 0.3s ease, background-color 0.3s ease;
        }
        .overview .stats div:hover {
            background-color: #3498db;
            transform: scale(1.05);
        }
        .overview .stats div h4 {
            margin: 0;
            font-size: 22px;
            color: #34495e;
        }
        .overview .stats div p {
            font-size: 32px;
            font-weight: bold;
            color: #2980b9;
        }

        /* Responsive Design */
        @media (max-width: 1024px) {
            .sidebar {
                width: 220px;
            }
            .main-content {
                margin-left: 240px;
            }
            .overview .stats div {
                width: 45%;
            }
        }

        @media (max-width: 768px) {
            .sidebar {
                width: 200px;
            }
            .main-content {
                margin-left: 220px;
            }
            .overview .stats div {
                width: 48%;
            }
        }

        @media (max-width: 480px) {
            .sidebar {
                width: 160px;
            }
            .main-content {
                margin-left: 180px;
            }
            .overview .stats div {
                width: 100%;
            }
            .header h1 {
                font-size: 28px;
            }
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <div class="header">
        <h1>Employee Manager Dashboard</h1>
    </div>

    <!-- Sidebar Section -->
    <div class="sidebar">
        <a href="productall">Manage Products</a>
        <a href="EmplyoeeData.jsp">Employees</a>
        <a href="ProductEntry.jsp">Product Entry</a>
    </div>

    <%-- Scriptlet to execute the logic --%>
    <% 
        productmethods m = new productmethods();
        int nm = m.count(); 
        int emplyoee = m.emplyoeecount();
        int order = m.order();
    %>

    <!-- Main Content Section -->
    <div class="main-content">
        <div class="overview">
            <h3>Dashboard Overview</h3>
            <div class="stats">
                <div>
                    <h4>Total Employees</h4>
                    <p><%= emplyoee %></p>
                </div>
                <div>
                    <h4>Total Orders</h4>
                    <p><%= order %></p>
                </div>
                <div>
                    <h4>Total Products</h4>
                    <p><%= nm %></p>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
