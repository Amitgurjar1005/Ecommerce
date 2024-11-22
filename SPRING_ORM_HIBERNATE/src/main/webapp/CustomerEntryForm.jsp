<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #007bff;
            color: white;
            padding: 10px 0;
            text-align: center;
        }
        footer {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: relative;
            bottom: 0;
            width: 100%;
            margin-top: 20px;
        }
        form {
            background: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: 40px auto;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            display: block;
            margin: 10px 0 5px;
        }
        input[type="text"],
        input[type="password"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #28a745;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
        .suggestion {
            color: #6c757d;
            margin: 5px 0 10px;
            text-align: center;
        }
    </style>
</head>
<body>
    <header>
        <h1>Apna Site</h1>
    </header>

    <form action="customersave" method="post" onsubmit="return validateForm()">
        <h2>Customer Details</h2>
        <label for="customerid">Customer ID</label>
        <input type="text" name="customerid"  pattern="^@[a-zA-Z0-9]+$" title="Customer ID must be sart @"id="customerid" required />
        <div class="suggestion" id="suggestion"></div>

        <label for="cname">Customer Name</label>
        <input type="text" name="cname" required />

        <label for="password">Password</label>
        <input type="password" name="password" required />

        <label for="email">Email</label>
        <input type="email" name="email" required />

        <label for="address">Address</label>
        <input type="text" name="address" required />

        <label for="mobileno">Mobile No (10 digits)</label>
        <input type="text" name="mobileno" pattern="\d{10}" maxlength="10" required 
               title="Please enter a valid 10-digit mobile number." />

        <input type="submit" value="Submit" />
    </form>

    <footer>
        <p>&copy; 2024 Apna Site. All rights reserved.</p>
    </footer>

    <script>
        // Generate a random customer ID suggestion
        function generateCustomerId() {
            return 'CUST' + Math.floor(Math.random() * 10000);
        }

        // Display the suggestion in the customer ID field
        document.getElementById('customerid').value = generateCustomerId();

        function validateForm() {
            const mobileInput = document.querySelector('input[name="mobileno"]');
            const mobileValue = mobileInput.value;

            if (mobileValue.length !== 10 || isNaN(mobileValue)) {
                alert('Please enter a valid 10-digit mobile number.');
                return false;
            }
            return true;
        }
    </script>
</body>
</html>
