<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
			<br />
		</div>
		
		<div class="form-group">
			<div class="col-5">
				<label for="custID">Customer ID: </label>
			</div>
			<div class="col-7">
				<input type = "number" name = "custID">
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
		
		
		
		<input type = "submit" value="Add Order" class="btn btn-primary">
	</form>
</body>
</html>