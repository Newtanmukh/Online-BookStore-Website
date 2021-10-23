package bookCart.dao;

import java.sql.*;
//import bookCart.model.*;

public class AdminDao {
	private Connection con;

	private String query;
    private PreparedStatement pst;
    private ResultSet rs;

	public AdminDao(Connection con) {
		this.con = con;
	}
	
	public int checkAdmin(String name, String password) {
//		User user = null;
        try {
            query = "select * from admin where name=? and password=?";
            pst = this.con.prepareStatement(query);
            pst.setString(1, name);
            pst.setString(2, password);
            rs = pst.executeQuery();
            if(rs.next()){
            	return 1;
            }
            else {
            	return -1;
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return 0;
    }
}