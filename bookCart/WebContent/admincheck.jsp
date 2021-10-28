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
<title>Validate Admin</title>
</head>
<body>
<%@ include file="components/navbar.jsp" %>
	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">ADMIN VALIDATION</div>
			<div class="card-body">
				<form action="AdminServlet" method="post">
					<div class="form-group">
						<label>Admin Name</label> <input type="text"
							name="login-name" class="form-control" placeholder="Enter admin name" required>
					</div>
					<div class="form-group">
						<label>Admin Password</label> <input type="password"
							name="login-password" class="form-control" placeholder="Enter admin Password" required>
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Enter as Admin</button>
					</div>
				</form>
			</div>
		</div>
	</div>
<%@ include file="components/footer.jsp" %>
</body>
</html>