<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create a New Order</title>

<!-- Bootstrap -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


<style>
	body{background-color: lightPink;}
</style>
</head>


<body>
<h1> Add a New Flower Order</h1>
	<form action="addOrderServlet">
	
		<div class="form-group">
			<div class="col-5">
				<label for="orderName">Order Name: </label>
			</div>
			<div class="col-7">
				<input type ="text" name = "orderName">
			</div>
		</div>
		
		<div class="form-group">
			<div class="col-5">
				<label for="custName">Customer Name: </label>
			</div>
			<div class="col-7">
				<input type = "text" name = "custName">
			</div>
		</div>
		
		<div class="form-group">
			<div class="col-5">
				<label for="price">Price: </label>
			</div>
			<div class="col-7">
				<input type = "number" name = "price">
			</div>
		</div>
		
		<div class="form-group">
			<div class="col-5">
				<label for="quantity">Quantity: </label>
			</div>
			<div class="col-7">
				<input type ="number" name = "quantity">
			</div>
			<br />
		</div>
		<div class="ml-5">
		Available Flowers:<br />
		
			<select name="allFlowersToAdd" multiple size="6">
			<c:forEach items="${requestScope.allFlowers}" var="currentflower">
   			<option value = "${currentflower.id}">${currentflower.flowerName} | ${currentflower.colors}</option>
			</c:forEach>
			</select>
			</div>
		<br>
		<br>
		<div class="w-100"></div>
		
		
		<input type = "submit" value="Add Order" class="btn btn-primary">
	</form>
	<br>
	<br>
	<button type="button" class="btn btn-default btn-light" onclick="location.href='index.html';">Add a flower instead</button>
	
	
</body>
</html>