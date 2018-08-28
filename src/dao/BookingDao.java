package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import model.Booking;


public class BookingDao {
	
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
	
	public static int add(Booking book) {
        int status=0;
		try {
        	Connection con = getConnection();
        	String query="insert into booking(name,email,hp,bookdate,kindfield,bookhour,totalprice,status) values(?,?,?,?,?,?,?,?)";
        	PreparedStatement ps = con.prepareStatement(query);
        	ps.setString(1, book.getName());
        	ps.setString(2, book.getEmail());
        	ps.setString(3, book.getHp());
        	ps.setString(4, book.getBookdate());
        	ps.setString(5, book.getKindfield());
        	ps.setInt(6, book.getBookhour());
        	ps.setInt(7, book.getTotalprice());
        	ps.setString(8, "Waiting");
        	status = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }
	
	public static int update(Booking book) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("update booking set name=?,email=?,hp=?,bookdate=?,kindfield=?,bookhour=?,totalprice=?,status=? where id=?");
			ps.setString(1, book.getName());
			ps.setString(2, book.getEmail());
			ps.setString(3, book.getHp());
			ps.setString(4, book.getBookdate());
			ps.setString(5, book.getKindfield());
			ps.setInt(6, book.getBookhour());
			ps.setInt(7, book.getTotalprice());
			ps.setString(8, book.getStatus());
			ps.setInt(9, book.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public static int delete(Booking book) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("delete from booking where id=?");
			ps.setInt(1, book.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}
	
	public static ArrayList<Booking> getAllRecords() {
		ArrayList<Booking> list = new ArrayList<Booking>();
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from booking");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Booking book = new Booking();
				book.setId(rs.getInt("id"));
				book.setName(rs.getString("name"));
				book.setEmail(rs.getString("email"));
				book.setHp(rs.getString("hp"));
				book.setBookdate(rs.getString("bookdate"));
				book.setKindfield(rs.getString("kindfield"));
				book.setBookhour(rs.getInt("bookhour"));
				book.setTotalprice(rs.getInt("totalprice"));
				book.setStatus(rs.getString("status"));
				list.add(book);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public static Booking getRecordById(int id) {
		Booking book = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from booking where id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				book = new Booking();
				book.setId(rs.getInt("id"));
				book.setName(rs.getString("name"));
				book.setEmail(rs.getString("email"));
				book.setHp(rs.getString("hp"));
				book.setBookdate(rs.getString("bookdate"));
				book.setKindfield(rs.getString("kindfield"));
				book.setBookhour(rs.getInt("bookhour"));
				book.setTotalprice(rs.getInt("totalprice"));
				book.setStatus(rs.getString("status"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return book;
	}
	
	public static Booking getNewestRecord() {
		Booking book = null;
		String query = "SELECT * FROM booking ORDER BY id DESC LIMIT 1";
		
		Connection con = getConnection();
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				book = new Booking();
				book.setId(rs.getInt("id"));
				book.setName(rs.getString("name"));
				book.setEmail(rs.getString("email"));
				book.setHp(rs.getString("hp"));
				book.setBookdate(rs.getString("bookdate"));
				book.setKindfield(rs.getString("kindfield"));
				book.setBookhour(rs.getInt("bookhour"));
				book.setTotalprice(rs.getInt("totalprice"));
				book.setStatus(rs.getString("status"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return book;
	}
}
