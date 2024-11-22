<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Payment QR Code</title>
<style>
    body {
        font-family: Arial, sans-serif;
        text-align: center;
        background-color: #f0f0f0;
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
        background-color: white;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }
    img {
        max-width: 100%;
        height: auto;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }
    .qr-code {
        margin-top: 20px;
        width: 200px;
        height: 200px;
        margin: 20px auto;
    }
    .qr-code img {
        width: 100%;
        height: 100%;
        border-radius: 8px;
    }
    h1 {
        color: #333;
        font-size: 28px;
    }
    p {
        color: #555;
        font-size: 18px;
    }
    .payment-note {
        color: #f39c12;
        font-weight: bold;
        margin-top: 20px;
    }
</style>
</head>
<body>

<div class="container">
    <h1>Scan to Make Payment</h1>
    <!-- Attractive Image (e.g., product or service) -->
    <img src="https://tse4.mm.bing.net/th?id=OIP.EzkD8c06ka24Xf99jmka1QHaHd&pid=Api&P=0&h=180" alt="Product Image" />
    <p> scan the QR code to complete your payment securely.</p>

   
    <p class="payment-note">Thank you for your purchase! Your payment will be processed securely.</p>
</div>

</body>
</html>
