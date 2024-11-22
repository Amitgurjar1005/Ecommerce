<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Manager Dashboard</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/style.css' />">
    <style>
        /* Your CSS styles */
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
        <a href="EmplyoeeData.jsp">Product Entry</a>
        <a href="productdetails">Product Details</a>
    </div>

    <!-- Main Content Section -->
    <div class="main-content">
        <div class="overview">
            <h3>Dashboard Overview</h3>
            <div class="stats">
                <div>
                    <h4>Total Employee</h4>
                    <p>456</p>
                </div>
                <div>
                    <h4>Total Orders</h4>
                    <p>${totalOrders}</p> <!-- Assuming totalOrders is passed in the controller -->
                </div>
                <div>
                    <h4>Total Products</h4>
                    <p>${productcount}</p> <!-- Displaying product count -->
                </div>
            </div>
        </div>

        <!-- Recent Orders Section -->
        <div class="overview">
            <h3>Recent Orders</h3>
            <table border="1" cellspacing="0" cellpadding="8">
                <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Customer Name</th>
                        <th>Product Name</th>
                        <th>Total Price</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="order" items="${orders}">
                        <tr>
                            <td>${order.orderId}</td>
                            <td>${order.customerName}</td>
                            <td>${order.productName}</td>
                            <td>${order.totalPrice}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</body>
</html>
