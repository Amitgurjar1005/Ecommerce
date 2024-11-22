<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.productdata"%>
<%@ page import="java.util.List"%>
<%
    // Retrieve the product list from the request attribute
    List<productdata> products = (List<productdata>) request.getAttribute("product");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product List</title>
</head>
<body>
    <h3>Product List</h3>
    <table border="1">
        <thead>
            <tr>
                <th>Ecode</th>
                <th>Discount</th>
                <th>Product Name</th>
                <th>Product Price</th>
            </tr>
        </thead>
        <tbody>
            <% 
                // Check if the product list is not null or empty
                if (products != null && !products.isEmpty()) {
                    for (productdata product : products) { 
            %>
            <tr>
                <td><%= product.getEcode() %></td>
                <td><%= product.getDiscount() %></td>
                <td><%= product.getPname() %></td>
                   <td><%= product.getPrice() %></td>
              
                  <td><a href="update?ecode=<%= product.getEcode() %>">update</a></td>
            </tr>
            <% 
                    }
                } else { 
            %>
            <tr>
                <td colspan="3">No products found.</td>
            </tr>
            <% 
                } 
            %>
        </tbody>
    </table>
    <a href="search.jsp">logout</a>
</body>
</html>
