<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <style>
        /* Basic CSS styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
            background-color: #333;
            color: white;
            padding: 10px 0;
            text-align: center;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
        .container {
            width: 60%;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
        }
        form {
            font-size: 16px;
        }
        label {
            display: inline-block;
            width: 120px;
        }
        input[type="text"], input[type="password"], select {
            width: 100%;
            padding: 8px;
            margin: 8px 0;
            box-sizing: border-box;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #5cb85c;
            color: white;
            border: none;
            font-size: 16px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #4cae4c;
        }
        p {
            text-align: center;
        }
        .show-password {
            display: inline-block;
            margin-left: 10px;
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        <h1>Welcome to Our Website</h1>
        <p>Your gateway to great services</p>
    </header>

    <!-- Main Content Section -->
    <div class="container">
        <h2>Login Form</h2>
        <form action="verification" method="post">
            <label for="userid">User ID:</label>
            <input type="text" id="userid" name="a1" required><br><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="a2" required><br><br>

            <input type="checkbox" id="showPassword" class="show-password"> 
            <label for="showPassword">Show Password</label><br><br>

            <label for="usertype">User Type:</label>
            <select name="a3" id="usertype">
                <option value="USERS">Users</option>
                <option value="EMPLOYEE">Employee</option>
                    <option value="MANAGER">Manager</option>
            </select><br><br>

            <input type="submit" value="Submit">
        </form>
        <p><a href="CustomerEntryForm.jsp">Customer Registration</a></p>
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 Your Company. All rights reserved.</p>
    </footer>

    <script>
        // JavaScript to toggle password visibility
        document.getElementById('showPassword').addEventListener('change', function() {
            var passwordField = document.getElementById('password');
            passwordField.type = this.checked ? 'text' : 'password';
        });
    </script>
</body>
</html>
