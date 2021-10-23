<%@page import="bookCart.connection.DBcon"%>
<%@page import="bookCart.dao.ProductDao"%>
<%@page import="bookCart.model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("auth", auth);
}
%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="components/header.jsp" %>
<title>Add Book</title>
</head>
<body>
<%@ include file="components/navbar.jsp" %>
	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">Book Details</div>
			<div class="card-body">
				<form action="AddBookervlet" method="post">
					<div class="form-group">
						<label>Book Title</label> <input type="text"
							name="login-name" class="form-control" placeholder="Enter book title">
					</div>
					<div class="form-group">
						<label>Author</label> <input type="text"
							name="login-author" class="form-control" placeholder="Enter author of the book">
					</div>
					<div class="form-group">
						<label>Publisher</label> <input type="text"
							name="login-publisher" class="form-control" placeholder="Enter publisher of the book">
					</div>
					<div class="form-group">
						<label>Warehouse Location</label> <input type="password"
							name="login-location" class="form-control" placeholder="Password">
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Register</button>
					</div>
				</form>
			</div>
		</div>
	</div>
<%@ include file="components/footer.jsp" %>
</body>
</html>