package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import DB.DBConnect;
import Model.Booking;


public class BookingDAO {
	public static boolean insertBooking(Booking book) 
	{
		Connection conn=DBConnect.CreateConnection();
		String sql="INSERT INTO booking VALUES (?,?,?, ?, ?, ? )";
		try {
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setInt(1,1);
						ps.setString(2,book.getFirstName());
			ps.setString(3,book.getLastName());
			ps.setString(4, book.getEmail());
			ps.setInt(5, book.getPhone());
			ps.setString(6, book.getAddress());
			ps.executeUpdate();
			return true;
		}
		catch (SQLException ex){
			Logger.getLogger(BookingDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
		
	}

}
