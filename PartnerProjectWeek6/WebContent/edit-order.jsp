<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit an Order</title>
</head>
<body>
	
	<form action="editOrderServlet" method="post">
		Drink: <input type="text" name="drink" value= "${orderToEdit.drink}">
		Size: <input type="text" name="size" value= "${orderToEdit.size}">
		Customer Name: <input type="text" name="customerName" value= "${orderToEdit.customer.customerName}">
		<input type="hidden" name="id" value="${orderToEdit.id}">
		<input type="submit" value="Save Edits">
	</form>
</body>
</html>