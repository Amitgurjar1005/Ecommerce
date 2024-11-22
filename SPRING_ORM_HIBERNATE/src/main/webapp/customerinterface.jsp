<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Apna Website - E-commerce</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #333;
            color: white;
            padding: 10px 0;
            text-align: center;
        }
        nav {
            background-color: #444;
            padding: 10px 0;
            text-align: center;
        }
        nav a {
            color: white;
            text-decoration: none;
            margin: 0 20px;
            font-size: 18px;
        }
        nav a:hover {
            text-decoration: underline;
        }
        .content {
            padding: 20px;
            margin-top: 20px;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
       /* Modal Styles */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgba(0, 0, 0, 0.4); /* Black with transparency */
}

/* Modal Content */
.modal-content {
    background-color: #fff;
    margin: 10% auto; /* Center the modal */
    padding: 30px;
    border-radius: 8px; /* Rounded corners */
    width: 90%; /* Width of the modal */
    max-width: 600px; /* Max width for large screens */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Soft shadow around the modal */
    text-align: left;
}

/* Close Button */
.close {
    color: #aaa;
    font-size: 30px;
    font-weight: bold;
    position: absolute; /* Position the close button at the top right */
    top: 10px;
    right: 20px;
    background: none;
    border: none;
    cursor: pointer;
}

/* Close Button Hover */
.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}

/* Modal Content Text */
.modal-content p {
    font-size: 16px;
    color: #333;
    line-height: 1.6;
}

/* Add padding to the modal content if necessary */
.modal-content h2, .modal-content h3 {
    color: #444;
    margin-bottom: 10px;
}

/* Ensure all content is aligned properly */
.modal-content .modal-body {
    padding-bottom: 10px; /* Add space for body content */
}

/* Optional: Styling for modal when there’s a lot of text content */
.modal-content .scrollable-content {
    max-height: 400px;
    overflow-y: auto;
}
       
    </style>
    
</head>
<body>

<%
    // Retrieve the customerId parameter from the request
    String customerId = request.getParameter("customerid");
    if (customerId == null) {
%>
    <div class="error-message">
        <h3>Customer Update Profile: You can update your profile only once after logging in. To update it again, please log in again.</h3>
    </div>
<%
    }
%>

<!-- Inject the customerId into JavaScript -->
<script>
    // Inject the customerId from JSP into JavaScript safely
    var customerId = "<%= (customerId != null) ? customerId : "" %>";  // If null, use empty string

    function informationload(event) {
        event.preventDefault(); // Prevent the default link behavior

        // Open the modal
        document.getElementById("contactModal").style.display = "block";

        // Fetch content via AJAX
        var request = new XMLHttpRequest();
        request.open("GET", "contact.jsp", true);
        request.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                // Load the content into the modal
                document.getElementById("modalContent").innerHTML = this.responseText;
            } else if (this.readyState == 4) {
                // Handle request failure (e.g., server error)
                document.getElementById("modalContent").innerHTML = "<p>Error loading content. Please try again later.</p>";
            }
        };
        request.send();
    }

    function profileinformation(event) {
        event.preventDefault(); // Prevent the default link behavior

        // Open the modal
        document.getElementById("contactModal").style.display = "block";

        // Fetch customer profile content via AJAX
        if (customerId) {  // Check if customerId is available
            var request = new XMLHttpRequest();
            request.open("GET", "customerprofile?customerid=" + customerId, true);
            request.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    // Load the profile content into the modal
                    document.getElementById("modalContent").innerHTML = this.responseText;
                } else if (this.readyState == 4) {
                    // Handle request failure (e.g., server error)
                    document.getElementById("modalContent").innerHTML = "<p>Error loading profile. Please try again later.</p>";
                }
            };
            request.send();
        } else {
            // Handle the case where customerId is not set
            document.getElementById("modalContent").innerHTML = "<p>No customer ID found. Please log in.</p>";
        }
    }

    // Close the modal when the user clicks the close button
    function closeModal() {
        document.getElementById("contactModal").style.display = "none";
    }

    // Close the modal when the user clicks outside the modal content
    window.onclick = function(event) {
        if (event.target == document.getElementById("contactModal")) {
            closeModal();
        }
    }
</script>



<!-- Header Section -->
<header>
    <h1>Welcome to Apna Website</h1>
    <p>Your one-stop shop for everything you need!</p>
</header>

<!-- Navigation Bar -->
<nav>
    <a href="home.jsp">Home</a>
    <a href="customerdata?customerid=<%= customerId %>">Update profile</a>
    <a href="contact.jsp" onclick="informationload(event)">Contact</a>
    <a href="customerprofile?customerid=<%= customerId %>" onclick="profileinformation(event)">Profile</a>
</nav>

<!-- Main Content -->
<div class="content">
    <h2>Featured Products</h2>
    <p>Browse our amazing selection of products!</p>

    <div class="product-container">
        <!-- Example of product -->
        <div class="product-card">
            <img src="https://tse4.mm.bing.net/th?id=OIP.965hgonKngSOQKtct7BZgAHaJz&pid=Api&P=0&h=180" alt="Mobile" class="product-image">
            <h3>Mobile</h3>
         
            <button type="button" onclick="window.location.href='searchbyproduct?ecode=112'">Buy</button>
        </div>

        <div class="product-card">
            <img src="https://www.printbebo.in/wp-content/uploads/2020/07/Photo-7.jpg" alt="Product 1" class="product-image">
            <h3>Mobile</h3>
                <button type="button" onclick="window.location.href='searchbyproduct?ecode=113'">Buy</button>
        </div>

        <div class="product-card">
            <img src="https://tse2.mm.bing.net/th?id=OIP.R6Ic0BwgKDJo-EOfkCKHtwHaHa&pid=Api&P=0&h=180" alt="Bluetooth Speakers" class="product-image">
            <h3>Bluetooth Speakers</h3>
               <button type="button" onclick="window.location.href='searchbyproduct?ecode=114'">Buy</button>
        </div>

        <div class="product-card">
            <img src="https://tse4.mm.bing.net/th?id=OIP.tsNRpdsyaEDV68XCQ-h5wwHaHa&pid=Api&P=0&h=180" alt="Bluetooth Earphones" class="product-image">
            <h3>Bluetooth Earphone</h3>
          <button type="button" onclick="window.location.href='searchbyproduct?ecode=115'">Buy</button>
        </div>

        <div class="product-card">
            <img src="https://tse2.mm.bing.net/th?id=OIP.xMFRXGAIRXza1dK9GoQr9AHaHa&pid=Api&P=0&h=180" alt="Bottle" class="product-image">
            <h3>Bottle</h3>
          <button type="button" onclick="window.location.href='searchbyproduct?ecode=116'">Buy</button>
        </div>

        <div class="product-card">
            <img src="https://tse1.mm.bing.net/th?id=OIP.PNGyvjPZ6mpa28wE4k3YTgHaHa&pid=Api&P=0&h=180" alt="Bag" class="product-image">
            <h3>Bag</h3>
     <button type="button" onclick="window.location.href='searchbyproduct?ecode=117'">Buy</button>
        </div>

        <div class="product-card">
            <img src="https://tse1.mm.bing.net/th?id=OIP.7hgcFdQIxxqXtRfwyi9R6wHaJN&pid=Api&P=0&h=180" alt="Tiffin" class="product-image">
            <h3>Tiffin</h3>
            <button type="button" onclick="window.location.href='searchbyproduct?ecode=118'">Buy</button>
        </div>

        <div class="product-card">
            <img src="https://tse3.mm.bing.net/th?id=OIP.Es0t2raAIRiyjcYxINgsSgHaJS&pid=Api&P=0&h=180" alt="Milton" class="product-image">
            <h3>Milton</h3>
         <button type="button" onclick="window.location.href='searchbyproduct?ecode=119'">Buy</button>
        </div>

        <div class="product-card">
            <img src="https://tse4.mm.bing.net/th?id=OIP.bk2t0l9-_dnHuw_XJK2BTgHaJ3&pid=Api&P=0&h=180" alt="Tshirt" class="product-image">
            <h3>Tshirt</h3>
          <button type="button" onclick="window.location.href='searchbyproduct?ecode=120'">Buy</button>
        </div>

        <div class="product-card">
            <img src="https://tse1.mm.bing.net/th?id=OIP.w3IIkeX7BMjcxfsxoqfmXAHaKp&pid=Api&P=0&h=180" alt="Pants" class="product-image">
            <h3>Pants</h3>
          <button type="button" onclick="window.location.href='searchbyproduct?ecode=121'">Buy</button>
        </div>

        <div class="product-card">
            <img src="https://tse1.mm.bing.net/th?id=OIP.6TYa5WK8LCzioVAwF3BkGAHaJQ&pid=Api&P=0&h=180" alt="Jackets" class="product-image">
            <h3>Jackets</h3>
           <button type="button" onclick="window.location.href='searchbyproduct?ecode=122'">Buy</button>
        </div>

        <div class="product-card">
            <img src="https://tse2.mm.bing.net/th?id=OIP.UyeOsAtHLBk8Ej_o40MhYwHaLM&pid=Api&P=0&h=180" alt="Novels" class="product-image">
            <h3>Novels</h3>
<button type="button" onclick="window.location.href='searchbyproduct?ecode=123'">Buy</button>

            
        </div>
    </div>
</div>

<!-- Additional CSS for styling -->
<style>
    .product-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-around;
    }
    .product-card {
        border: 1px solid #ddd;
        padding: 10px;
        margin: 10px;
        width: 200px;
        text-align: center;
    }
    .product-image {
        width: 100%;
        height: auto;
    }
    .add-to-cart {
        margin-top: 10px;
        padding: 5px 10px;
        background-color: #28a745;
        color: white;
        border: none;
        cursor: pointer;
    }
    .add-to-cart:hover {
        background-color: #218838;
    }
    @media (max-width: 768px) {
        .product-card {
            width: 45%;
        }
    }
    @media (max-width: 480px) {
        .product-card {
            width: 100%;
        }
    }
</style>


<!-- Modal for Contact Content -->
<div id="contactModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>
        <div id="modalContent">
            <!-- Content will be dynamically loaded here -->
        </div>
    </div>
</div>

<!-- Footer Section -->
<footer>
    <p>&copy; 2024 Apna Website. All rights reserved.</p>
</footer>

</body>
</html>
