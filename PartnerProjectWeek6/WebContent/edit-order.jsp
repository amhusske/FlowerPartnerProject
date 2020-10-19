<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

<title>Edit an Order</title>

<style>
	body{background-color: lightPink;}
</style>

</head>
<body>
	
	<form action="editOrderServlet" method="post">
		<div class="form-group">
			<div class="col-5">
				<label for="orderName">Order Name: </label>
			</div>
			<div class="col-7">
				<input type="text" name="orderName" value= "${orderToEdit.orderName}">
			</div>
		</div>
		<div class="form-group">
			<div class="col-5">
				<label for="customerName">Customer Name: </label>
			</div>
			<div class="col-7">
				<input type="text" name="customerName" value= "${orderToEdit.customer.customerName}">
			</div>
		</div>
		
		<div class="form-group">
			<div class="col-5">
				<label for="price">Price : </label>
			</div>
			<div class="col-7">
				<input type="number" name="price" value= "${orderToEdit.price}">
			</div>
		</div>
		
		<div class="form-group">
			<div class="col-5">
				<label for="quantity">Quantity : </label>
			</div>
			<div class="col-7">
				<input type="number" name="quantity" value= "${orderToEdit.quantity}">
			</div>
		</div>
		

		Available Flowers:<br />

		<select name="allFlowersToAdd" multiple size="6">
		<c:forEach items="${requestScope.allFlowers}" var="currentflower">
   		<option value = "${currentflower.id}">${currentflower.flowerName} | ${currentflower.colors}</option>
		</c:forEach>
		</select>
		
		<br>
		<div class="w-100"></div>
		
		<div class="ml-5">
			<input type="hidden" name="id" value="${orderToEdit.orderID}">
			<br>
			<input type="submit" class="btn btn-primary" value="Save Edits">
		</div>
	</form>
</body>
</html>