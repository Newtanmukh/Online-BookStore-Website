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
//import bookCart.model.*;

@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
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
			String name = request.getParameter("login-name");
			String password = request.getParameter("login-password");

			AdminDao adao = new AdminDao(DBcon.getConnection());
			result = adao.checkAdmin(name, password);
			if (result>0) {
//				request.getSession().setAttribute("auth", user);
//				System.out.print("user logged in");
				response.sendRedirect("addbook.jsp");
			} else {
				out.println(name);
				out.println(password);
				out.println(result);
				out.println("invalid admin info");
			}

		} catch (ClassNotFoundException|SQLException e) {
			e.printStackTrace();
		} 

	}
}
