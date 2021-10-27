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
<%@ include file="components/header.jsp"%>
<title>Add Book</title>
</head>
<body>
	<%@ include file="components/navbar.jsp"%>
	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">Book Details</div>
			<div class="card-body">
				<form action="AddBookServlet" method="post">
					<div class="form-group">
						<label>Book Title</label> <input type="text" name="book-name"
							class="form-control" placeholder="Enter book title" required>
					</div>
					<div class="form-group">
						<label class="mr-sm-2" for="book-author">Author</label> <select
							class="custom-select mr-sm-2" id="book-author" name="book-author" required>
							<option selected>Choose...</option>
							<option value="Chetan Bhagat">Chetan Bhagat</option>
							<option value="William Shakespeare">William Shakespeare</option>
							<option value="Agatha Christie">Agatha Christie</option>
							<option value="Dan Brown">Dan Brown</option>
							<option value="J. K. Rowling">J. K. Rowling</option>
						</select>
					</div>
					<div class="form-group">
						<label class="mr-sm-2" for="book-publisher">Publisher</label> <select
							class="custom-select mr-sm-2" id="book-publisher"
							name="book-publisher" required>
							<option selected>Choose...</option>
							<option value="Jaico Publishing House">Jaico Publishing
								House</option>
							<option value="Westland Publications">Westland
								Publications</option>
							<option value="Anmol Publications">Anmol Publications</option>
							<option value="London Publications">Srishti
								Publications</option>
							<option value="Reliance Publishing House">Reliance
								Publishing House</option>
						</select>
					</div>
					<div class="form-group">
						<label>Price</label> <input type="number" name="book-price"
							class="form-control" placeholder="Enter price" required>
					</div>
					<div class="form-group">
						<label class="mr-sm-2" for="book-category">Category</label> <select
							class="custom-select mr-sm-2" id="book-category"
							name="book-category" required>
							<option selected>Choose...</option>
							<option value="Inspirational">Inspirational</option>
							<option value="Mystery">Mystery</option>
							<option value="Love Story">Love Story</option>
							<option value="Thriller">Thriller</option>
							<option value="Historical">Historical</option>
							<option value="Academics">Academics</option>
						</select>
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Register</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<%@ include file="components/footer.jsp"%>
</body>
</html>