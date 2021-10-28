package bookCart.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.SQLException;

import bookCart.connection.DBcon;
import bookCart.dao.*;

@WebServlet("/AddBookServlet")
public class AddBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("login.jsp");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int result=0;
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {
			String name = request.getParameter("book-name");
			String author = request.getParameter("book-author");
			String publisher = request.getParameter("book-publisher");
			String category = request.getParameter("book-category");
			int price = Integer.parseInt(request.getParameter("book-price"));
			
			AddBookDao adao = new AddBookDao(DBcon.getConnection());
			result = adao.addbook(name, author, publisher, price, category);
			if (result>0) {
//				out.print("Book added successfully. Thank You!");
				response.sendRedirect("index.jsp");
			} else {
				out.println("invalid admin info");
			}
		} catch (ClassNotFoundException|SQLException e) {
			e.printStackTrace();
		} 
	}
}