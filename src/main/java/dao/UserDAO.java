package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Category;
import model.User;

public class UserDAO extends DBConnect{
	
	
	public User login(String email, String password) {		
		String sql = "SELECT * FROM users WHERE email=? AND password=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, email);
			pst.setString(2, password);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				User user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), 
						rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7));
				
				return user;
			}
						
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public User checkUser(String email) {
		
		String sql = "SELECT * FROM users WHERE email=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				User user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), 
						rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7));
				
				return user;
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	
	public void signup(int userId, String email, String password, String fullName, String phone,String address) {
		
		String sql = "INSERT INTO users values(?,?,?,?,?,?,1)";

			try {
				PreparedStatement pst = conn.prepareStatement(sql);
				pst.setInt(1, userId);
				pst.setString(2, email);
				pst.setString(3, password);
				pst.setString(4, fullName);
				pst.setString(5, phone);
				pst.setString(6, address);
				pst.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	
	}
	public User getName(String fullname) {
		
		String sql = "SELECT * FROM users WHERE fullname=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, fullname);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				User user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), 
						rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7));
				
				return user;
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	public List<User> getAll(){
		List<User> users = new ArrayList<User>();
		String sql = "SELECT * FROM users";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				User user = new User(rs.getInt("userId"), 
												 rs.getString("email"), 
												 rs.getString("password"),
												 rs.getString("fullname"),
												 rs.getString("phone"),
												 rs.getString("address"),
												 rs.getInt("role"));
				users.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return users;
	}
	
	
	public User getById(int userId) {
		String sql = "SELECT * FROM users WHERE userId=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, userId);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				User user = new User(rs.getInt("userId"), 
						 rs.getString("email"), 
						 rs.getString("password"),
						 rs.getString("fullname"),
						 rs.getString("phone"),
						 rs.getString("address"),
						 rs.getInt("role"));
				
				return user;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public void insert(User user) {
		String sql = "INSERT INTO users values(?,?,?,?,?,?,?)";

		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, user.getUserId());
			pst.setString(2, user.getEmail());
			pst.setString(3, user.getPassword());
			pst.setString(4, user.getFullname());
			pst.setString(5, user.getPhone());
			pst.setString(6, user.getAddress());
			pst.setInt(7, user.getRole());
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void update(User user) {
		String sql = "UPDATE users SET email=?,password=?,fullname=?,phone=?,address=?,role=? WHERE userId=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, user.getEmail());
			pst.setString(2, user.getPassword());
			pst.setString(3, user.getFullname());
			pst.setString(4, user.getPhone());
			pst.setString(5, user.getAddress());
			pst.setInt(6, user.getRole());
			pst.setInt(7, user.getUserId());
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void delete(int userId) {
		String sql = "DELETE FROM users WHERE userId=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, userId);
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
