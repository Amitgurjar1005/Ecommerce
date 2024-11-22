<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Billing</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 0;
            color: #333;
        }

        .container {
            max-width: 900px;
            margin: 30px auto;
            background-color: #fff;
            padding: 30px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h1, h3 {
            color: #2c3e50;
        }

        .product-info, .customer-info {
            border: 1px solid #e0e0e0;
            padding: 20px;
            border-radius: 8px;
            background-color: #fafafa;
            margin-bottom: 30px;
        }

        .form-input {
            margin-bottom: 15px;
        }

        .form-label {
            font-weight: bold;
            margin-bottom: 5px;
            color: #555;
        }

        input[type="text"], input[type="number"], input[type="email"], textarea {
            padding: 10px;
            font-size: 1em;
            width: 100%;
            margin: 8px 0 15px;
            border-radius: 5px;
            border: 1px solid #ddd;
            box-sizing: border-box;
        }

        .btn {
            background-color: #3498db;
            color: white;
            padding: 12px 20px;
            font-size: 1.1em;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            margin-right: 10px;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #2980b9;
        }

        .btn-secondary {
            background-color: #2ecc71;
        }

        .btn-secondary:hover {
            background-color: #27ae60;
        }

        .qr {
            display: flex;
            justify-content: center;
            margin-top: 20px;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: #f7f7f7;
        }

        .qr img {
            max-width: 100%;
            height: auto;
        }

        .form-header {
            margin-bottom: 20px;
            font-size: 1.3em;
            color: #2c3e50;
            font-weight: bold;
        }

        .checkbox-group {
            display: flex;
            align-items: center;
            margin-top: 15px;
        }

        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.4);
            padding-top: 60px;
        }

        .modal-content {
            background-color: #fefefe;
            margin: 5% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 500px;
            border-radius: 8px;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
    </style>
    <script>
        function openQR() {
            document.getElementById("qr").innerHTML = "";
            var request = new XMLHttpRequest();
            request.open("GET", "QR.jsp", true);
            request.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("qr").innerHTML = this.responseText;
                    document.getElementById("myModal").style.display = "block";
                } else if (this.readyState == 4) {
                    document.getElementById("qr").innerHTML = "<p>Error loading QR. Please try again later.</p>";
                }
            };
            request.send();
        }

        function closeModal() {
            document.getElementById("myModal").style.display = "none";
        }

        function proceedToCheckout() {
            alert("Pay after delivery. Please confirm your details and proceed with cash payment.");
        }

        function calculateTotal() {
            var price = parseFloat("${p != null ? p.price : 0}");
            var discount = parseFloat("${p != null ? p.discount : 0}");
            var quantity = parseInt(document.getElementById('quantity').value);

            var subtotal = price * quantity;
            var totalPrice = subtotal - discount;

            document.getElementById('subtotal').innerText = subtotal.toFixed(2);
            document.getElementById('totalPrice').innerText = totalPrice.toFixed(2);
        }

        window.onload = calculateTotal;
    </script>
</head>
<body>
    <div class="container">
        <h3>Product Billing Details</h3>

        <!-- Product Info Section -->
        <div class="product-info">
            <h1>Product Information</h1>
            <p><strong>Code:</strong> ${p != null ? p.ecode : 'N/A'}</p>
            <p><strong>Product Name:</strong> ${p != null ? p.pname : 'N/A'}</p>
            <p><strong>Price:</strong> ${p != null ? p.price : 'N/A'}</p>
            <p><strong>Discount:</strong> ${p != null ? p.discount : 'N/A'}</p>

            <div class="input-group">
                <label for="quantity" class="form-label">Quantity:</label>
                <input type="number" id="quantity" name="quantity" value="1" min="1" max="100" oninput="calculateTotal()">
            </div>

            <div id="qr"></div>

            <div class="price">
                <p><strong>Subtotal:</strong> <span id="subtotal">${p != null ? p.price : 0}</span></p>
                <p><strong>Discount:</strong> <span id="discount">${p != null ? p.discount : 0}</span></p>
                <p><strong>Total Price:</strong> <span id="totalPrice">${p != null ? p.price : 0}</span></p>
            </div>
        </div>

        <!-- Customer Info Section -->
        <form:form action="Deliverinfo" modelAttribute="p">
            <div class="customer-info">
                <div class="form-header">Enter Your Delivery Information</div>

                <div class="form-input">
                    <label for="customerName" class="form-label">Full Name</label>
                    <input type="text" id="customerName" name="customerName" required="true" placeholder="John Doe">
                </div>

                <div class="form-input">
                    <label for="email" class="form-label">Email Address</label>
                    <input type="email" id="email" name="email" required="true" placeholder="example@example.com">
                </div>

                <div class="form-input">
                    <label for="phoneNumber" class="form-label">Phone Number</label>
                    <input type="text" id="phoneNumber" name="phoneNumber" required="true" placeholder="(555) 555-5555">
                </div>

                <div class="form-input">
                    <label for="address" class="form-label">Delivery Address</label>
                    <input type="text" id="address" name="address" required="true" placeholder="1234 Elm Street, City, State, 12345">
                </div>

                <div class="checkbox-group">
                    <input type="checkbox" id="sameAsBilling" name="sameAsBilling">
                    <label for="sameAsBilling" class="form-label">Billing Address Same as Delivery Address</label>
                </div>

                <div class="form-input">
                    <label for="specialInstructions" class="form-label">Special Delivery Instructions</label>
                    <textarea id="specialInstructions" name="specialInstructions" placeholder="Any specific delivery instructions?"></textarea>
                </div>
            </div>

            <!-- Submit Button -->
            <input type="submit" value="Confirm Delivery and Payment" class="btn">
        </form:form>

        <!-- Payment Options -->
        <button class="btn" onclick="openQR()">Pay Online</button>
        <button class="btn btn-secondary" onclick="proceedToCheckout()">Pay with Cash</button>

    </div>

    <!-- Modal for QR Code -->
    <div id="myModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <div id="qr"></div>
        </div>
    </div>
</body>
</html>
