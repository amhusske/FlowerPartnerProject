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
		Order Name: <input type="text" name="orderName" value= "${orderToEdit.orderName}">
		Customer Name: <input type="text" name="customerName" value= "${orderToEdit.customer.customerName}">
		Price : <input type="number" name="price" value= "${orderToEdit.price}">
		Quantity : <input type="number" name="quantity" value= "${orderToEdit.quantity}">

		Available Flowers:<br />

		<select name="allFlowersToAdd" multiple size="6">
		<c:forEach items="${requestScope.allFlowers}" var="currentflower">
   		<option value = "${currentflower.id}">${currentflower.flowerName} | ${currentflower.colors}</option>
		</c:forEach>
		
		<br />
		<input type="hidden" name="id" value="${orderToEdit.id}">
		<input type="submit" value="Save Edits">
	</form>
</body>
</html>