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

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("login.jsp");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {
			String name = request.getParameter("login-name");
			String email = request.getParameter("login-email");
			String address = request.getParameter("login-address");
			String password = request.getParameter("login-password");
			
			RegisterDao rdao = new RegisterDao(DBcon.getConnection());
			int result = rdao.userRegister(name, email, address, password);

			if (result > 0) {
//				System.out.print("user registered successfully");
				response.sendRedirect("login.jsp");
			} else {
				out.println("invalid info");
			}

		} catch (ClassNotFoundException|SQLException e) {
			e.printStackTrace();
		} 

	}
}
