<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Customer</title>
</head>
<body>
<form action="addCustomerServlet" method="post">
	Customer Name: <input type="text" name="customerName" required>
	<input type = "submit" name="addCustomer" value="Add Customer">
	</form><br />
	<a href="index.html">View past orders here</a>
	
</body>
</html>