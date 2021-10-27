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
<%@ include file="components/header.jsp"%>
<title>BOOKCART</title>
</head>
<body>
	<%@ include file="components/navbar.jsp"%>

	<div class="container">
		<div class="card-header my-3" style="background-color:black; color:white;" >All Books</div>
		<div class="row">
			<%
				if (!products.isEmpty()) {
					for (Product p : products) {
			%>
			<div class="col-md-3 my-3">
				<div class="card w-100">
					<h4 class="card-top"><%=p.getPublisher()%></h4>
					<img class="card-img-top" src="images/index.jpeg"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=p.getName()%></h5>
						<h6 class="price">
							Price: $<%=p.getPrice()%></h6>
						<h6 class="category">
							Author:
							<%=p.getAuthor()%></h6>
						<h6 class="publisher">
							Category:
							<%=p.getCategory()%></h6>
						<div class="mt-3 d-flex justify-content-between">
							<a class="btn btn-dark" href="AddToCartServlet?id=<%=p.getId()%>">Add
								to Cart</a> <a class="btn btn-primary"
								href="OrderNowServlet?quantity=1&id=<%=p.getId()%>">Buy Now</a>
						</div>
					</div>
				</div>
			</div>
			<%
				}
				} else {
					out.println("No books available!");
				}
			%>

		</div>
	</div>

	<%@ include file="components/footer.jsp"%>
</body>
</html>