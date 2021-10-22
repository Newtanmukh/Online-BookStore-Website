<%@ page import="bookCart.connection.DBcon" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="components/header.jsp" %>
<title>BOOKCART</title>
</head>
<body>
<%@ include file="components/indexnav.jsp" %>

<% out.print(DBcon.getConnection()); %>

<%@ include file="components/footer.jsp" %>
</body>
</html>