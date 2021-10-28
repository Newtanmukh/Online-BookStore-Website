package bookCart.dao;

import java.sql.*;

public class AddBookDao {
	private Connection con;

	private String query;
    private PreparedStatement pst;

	public AddBookDao(Connection con) {
		this.con = con;
	}
	
	public int addbook(String name, String author, String publisher, int price, String category) {
		int result=0;
        try {
        	//TODO
        	//query to insert book and set parameters
        	query = "insert into products (name, author_name, publisher_name, price, category) values(?,?,?,?,?)";
            pst = this.con.prepareStatement(query);
            pst.setString(1, name);
            pst.setString(2, author);
            pst.setString(3, publisher);
            pst.setInt(4, price);
            pst.setString(5, category);
            result = pst.executeUpdate();
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return result;
    }
}