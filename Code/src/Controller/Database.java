package Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Model.Room;

public class Database {

	public static Connection con() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelbooking", "root", "han2911");
			if (con != null)
				System.out.println("thanh cong");
			else
				System.out.println("that bai");

		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}

	public static Room getRoomId(int id) {
		Room r = null;
		try {
			Statement stmt = con().createStatement();
			ResultSet rs = stmt.executeQuery("select * from room where room_id='R0" + id + "'");
			while (rs.next())
				r = new Room(rs.getString(2), rs.getString(2), rs.getString(3), rs.getString(6), rs.getString(5),
						rs.getString(6));
		} catch (Exception e) {
		}
		return r;
	}

	public static ArrayList<Room> getRoom() {
		ArrayList<Room> list = new ArrayList<Room>();
		try {
			Statement stmt = con().createStatement();
			ResultSet rs = stmt.executeQuery("select * from room");
			while (rs.next())
				list.add(new Room(rs.getString(2), rs.getString(2), rs.getString(3), rs.getString(6), rs.getString(5),
						rs.getString(6)));
			con().close();
		} catch (Exception e) {
		}
		return list;
	}

	public static void main(String[] args) {
//		System.out.println(getRoom().get(0).getRoom_name());
//		System.out.println(getRoom().size());
		System.out.println(getRoomId(1).toString());
	}

}
