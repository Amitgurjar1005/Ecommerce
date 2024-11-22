 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

    <!-- Example of using JSTL to display a message -->
    <c:set var="message" value="Hello, JSTL!" />
    <c:out value="${message}" />

</body>
</html>
 