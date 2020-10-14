<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Past Orders</title>
</head>
<body>

	<form method = "post" action="navigationServlet">
	<table>
		<c:forEach items="${requestScope.allOrders}" var="currentorder">
		<tr>
			<td><input type="radio" name="id" value="${currentorder.id}"></td>
			<td>${currentorder.drink}</td><td>|| ${currentorder.size}</td>
			<td colspan="3">|| Customer:${currentorder.customer.customerName}</td>
		</c:forEach>
	</table>
	<input type="submit" value="edit" name="orderAction">
	<input type="submit" value="delete" name="orderAction">
	<input type="submit" value="add" name="orderAction">
	</form>
</body>
</html>