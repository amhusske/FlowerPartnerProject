<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<!-- Meta Tags -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Flower Shop- Order List Page">
<meta name="keywords" content="HTML, CSS, Java, Flower Shop">
<meta name="author" content="Nikki McCloud & Abby  Husske">

<!-- BootStrap -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>Customer Orders</title>

<style>
	body{background-color: lightPink;}
</style>

</head>
<body>

	<form method = "post" action = "orderNavigationServlet">
	<table>
	<c:forEach items="${requestScope.allOrders}" var="currentlist">
	<tr>
		<td><input type="radio" name="id" value="${currentlist.orderID}"></td>
 		<td><h2>${currentlist.orderName}</h2></td></tr>
		<tr><td colspan="3">${currentlist.customer}</td></tr>
		<tr><td colspan="3">Order Date: ${currentlist.orderDate}</td></tr>
 		<tr><td colspan="3">Quantity: ${currentlist.quantity}</td></tr>
 		<tr><td colspan="3">Total Price: $ ${currentlist.price}</td></tr>
	 
	 <c:forEach var = "listVal" items = "${currentlist.listOfFlowers}">
 		<tr><td></td><td colspan="3">${listVal.flowerName}, ${listVal.colors}
 			</td>
	 	</tr>
	 	 </c:forEach>
	</c:forEach>
	</table>
	
	<br>
	<input type="submit" value="edit" name="doThisToOrder" class="btn btn-warning">
	<input type="submit" value="delete" name="doThisToOrder" class="btn btn-danger">
	<input type="submit" value="add" name="doThisToOrder"  class="btn btn-success">
	</form>
	
		<!-- Scripts -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    
</body>
</html>