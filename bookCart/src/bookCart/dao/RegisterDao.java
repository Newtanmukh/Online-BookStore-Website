package bookCart.dao;

import java.sql.*;

public class RegisterDao {
	private Connection con;

	private String query;
    private PreparedStatement pst;

	public RegisterDao(Connection con) {
		this.con = con;
	}
	
	public int userRegister(String name, String email, String address, String password) {
		int result=0;
        try {
        	query = "insert into users (name, email, password) values(?,?,?)";
            pst = this.con.prepareStatement(query);
            pst.setString(1, name);
            pst.setString(2, email);
            pst.setString(3, password);
            result = pst.executeUpdate();
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return result;
    }
}