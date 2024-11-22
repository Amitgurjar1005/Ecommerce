<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Login</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"> <!-- Font Awesome CDN -->
    <style>
        /* General Page Styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            
            background-color: #f4f7fc;
              background-position: center center;  
              background-repeat: no-repeat;
            background-image:url("https://i.pinimg.com/originals/41/17/73/411773e40b4057645a51293872dcfd0c.jpg");
      background-size: cover;
      background-size: 100% 85%;
     
        }
        
        /* Header Section */
        header {
            background-color: #333;
            color: white;
            padding: 15px 0;
            text-align: center;
            font-size: 24px;
        }

        header h1 {
            margin: 0;
        }

        /* Navigation Bar */
        nav {
            background-color: #4CAF50;
            overflow: hidden;
        }

        nav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 18px;
        }

        nav a:hover {
            background-color: #45a049;
        }

        /* Main Content Section */
        .main-content {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 80vh;
            padding: 20px;
        }

        form {
            width: 100%;
            max-width: 400px;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        form label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        input[type="text"], input[type="password"], input[type="email"], input[type="tel"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 4px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        /* Password visibility toggle */
        .show-password {
            margin-top: 10px;
            display: flex;
            align-items: center;
        }

        .show-password input[type="checkbox"] {
            margin-right: 8px;
        }

        .eye-icon {
            font-size: 20px;
            cursor: pointer;
        }

        /* Footer Section */
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 15px 0;
            position: relative;
            bottom: 0;
            width: 100%;
        }
    </style>
    <script>
        // Toggle password visibility based on checkbox
        function togglePasswordVisibility() {
            var passwordField = document.getElementById("emppassword");
            var checkbox = document.getElementById("show-password-checkbox");
            if (checkbox.checked) {
                passwordField.type = "text";  // Show password
            } else {
                passwordField.type = "password";  // Hide password
            }
        }
    </script>
</head>
<body>

<!-- Header -->
<header>
    <h1>Employee Portal</h1>
</header>

<!-- Navigation Bar -->
<nav>
    <a href="managerinterface2.jsp">Home</a>
   
</nav>

<!-- Main Content -->
<div class="main-content">
    <form action="EmplyoeeData">
        <!-- Employee ID Field -->
        <label for="empid">Employee ID</label>
        <input type="text" id="empid" name="empid" required pattern="^@[a-zA-Z0-9]+$" title="Employee ID must be sart @" placeholder="Enter Employee ID">
          <label for="empname">Employee Name</label>
        <input type="text" id="empname" name="empname" required pattern="^[a-zA-Z0-9]+$" title="Employee name" placeholder="Enter Employee Name">
       
       
        <!-- Employee Password Field -->
        <label for="emppassword">Employee Password</label>
        <input type="password" id="emppassword" name="emppassword" required minlength="6" title="Password must be at least 6 characters long" placeholder="Enter Password">

        <!-- Checkbox for Show/Hide Password with Eye Icon -->
        <div class="show-password">
            <label>
                <input type="checkbox" id="show-password-checkbox" onclick="togglePasswordVisibility()"> 
                <span id="eye-icon" class="eye-icon">
                    <i class="fas fa-eye-slash"></i>  <!-- Font Awesome Eye Slash icon (for hidden password) -->
                </span> 
                Show Password
            </label>
        </div>

        <!-- Address Field -->
        <label for="address">Address</label>
        <input type="text" id="address" name="address" required placeholder="Enter Address">

        <!-- Contact Number Field -->
        <label for="contactno">Contact Number</label>
        <input type="tel" id="contactno" name="contactno" required pattern="\d{10}" title="Please enter a valid 10-digit phone number" placeholder="Enter Contact Number">

        <!-- Email Field -->
        <label for="email">Email</label>
        <input type="email" id="email" name="email" required placeholder="Enter Email">

        <input type="submit" value="Submit">
    </form>
</div>

<!-- Footer -->
<footer>
    <p>&copy; 2024 Employee Portal. All rights reserved.</p>
</footer>

</body>
</html>
