package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.cj.Session;

import model.Admin;

public class AdminDao {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cyka_futsal", "root", "");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
	
	public static int validate(Admin admin) {
		int status= 0;
		Connection con = getConnection();
		String query = "select * from admin where username=? and password=?";
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, admin.getUsername());
			ps.setString(2, admin.getPassword());
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				status= 1;
				System.out.println("Username : " + rs.getString("username"));
				System.out.println("Password : " + rs.getString("password"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		return status;
	}
}
