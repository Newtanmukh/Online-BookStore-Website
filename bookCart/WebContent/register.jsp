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
ProductDao pd = new ProductDao(DBcon.getConnection());
List<Product> products = pd.getAllProducts();
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
	request.setAttribute("cart_list", cart_list);
}
%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="components/header.jsp" %>
<title>Register User</title>
</head>
<body>
<%@ include file="components/navbar.jsp" %>
	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">Register Info</div>
			<div class="card-body">
				<form action="RegisterServlet" method="post">
					<div class="form-group">
						<label>Name</label> <input type="text"
							name="login-name" class="form-control" placeholder="Enter name">
					</div>
					<div class="form-group">
						<label>Email address</label> <input type="email"
							name="login-email" class="form-control" placeholder="Enter address">
					</div>
					<div class="form-group">
						<label>Your Address</label> <input type="text"
							name="login-address" class="form-control" placeholder="Enter email">
					</div>
					<div class="form-group">
						<label>Password</label> <input type="password"
							name="login-password" class="form-control" placeholder="Password">
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