<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile - Apna Website</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .container {
            width: 80%;
            margin: 20px auto;
            background-color: white;
            padding: 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .profile-header {
            text-align: center;
            margin-bottom: 20px;
        }

        .profile-header h2 {
            margin: 0;
            font-size: 2rem;
        }

        .profile-header p {
            font-size: 1.2rem;
            color: #777;
        }

        .profile-info {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            padding: 20px 0;
            border-top: 1px solid #ddd;
        }

        .profile-info .info {
            width: 48%;
            margin-bottom: 20px;
        }

        .profile-info .info h3 {
            margin: 0 0 10px;
            font-size: 1.4rem;
            color: #333;
        }

        .profile-info .info p {
            margin: 0;
            font-size: 1.2rem;
            color: #555;
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<!-- Header Section -->
<header>
    <h1>Apna Website - User Profile</h1>
    <p>Manage your account and profile</p>
</header>

<!-- Profile Container -->
<div class="container">
    <div class="profile-header">
        <h2>Welcome, ${p.cname}</h2>
        <p>Below is your profile information.</p>
    </div>

    <!-- Profile Information -->
    <div class="profile-info">
        <div class="info">
            <h3>Customer ID:</h3>
            <p>${p.customerid}</p>
        </div>
        <div class="info">
            <h3>Name:</h3>
            <p>${p.cname}</p>
        </div>
        <div class="info">
            <h3>Password:</h3>
            <p>${p.password}</p>
        </div>
        <div class="info">
            <h3>Email:</h3>
            <p>${p.email}</p>
        </div>
        <div class="info">
            <h3>Mobile Number:</h3>
            <p>${p.mobileno}</p>
        </div>
        <div class="info">
            <h3>Address:</h3>
            <p>${p.address}</p>
        </div>
    </div>
</div>

<!-- Footer Section -->
<footer>
    <p>&copy; 2024 Apna Website. All rights reserved.</p>
</footer>

</body>
</html>
