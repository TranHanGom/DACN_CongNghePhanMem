package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import DB.DBConnect;
import Model.User;

public class UserDAO {
	public static boolean insertUser(User user) {
		Connection conn = DBConnect.CreateConnection();
		String sql = "INSERT INTO user (username, password, firstname, lastname, email, phone, active)"
				+ "VALUES (?, ?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getPassWord());
			ps.setString(3, user.getFirstName());
			ps.setString(4, user.getLastName());
			ps.setString(5, user.getEmail());
			ps.setString(6, user.getPhone());
			ps.setInt(7, user.getActive());
			ps.executeUpdate();
			return true;
		} catch (SQLException ex) {
			Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;

	}

	public static User login(String username, String password) {
		Connection con = DBConnect.CreateConnection();
		String sql = "select * from user where username='" + username + "' and password='" + password + "'";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				User user = new User();
				user.setID(rs.getString("user_id"));
				user.setUserName(rs.getString("username"));
				user.setPassWord(rs.getString("password"));
				user.setFirstName(rs.getString("firstname"));
				user.setLastName(rs.getString("lastname"));
				user.setEmail(rs.getString("email"));
				user.setPhone(rs.getString("phone"));
				user.setActive(rs.getInt("active"));
				con.close();
				return user;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	

	public static ArrayList<User> getListTaiKhoan() {
		Connection cons = DBConnect.CreateConnection();
		String sql = "SELECT * FROM user";
		ArrayList<User> list = new ArrayList<>();
		try {
			PreparedStatement ps = (PreparedStatement) cons.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				User user = new User();
				user.setID(rs.getString("user_id"));
				user.setUserName(rs.getString("username"));
				user.setPassWord(rs.getString("password"));
				user.setFirstName(rs.getString("firstname"));
				user.setLastName(rs.getString("lastname"));
				user.setEmail(rs.getString("email"));
				user.setPhone(rs.getString("phone"));
				user.setActive(rs.getInt("active"));

				list.add(user);
			}
			cons.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public static void main(String[] args) {
		System.out.println(login("ThanhVan", "25980"));
	}

}
