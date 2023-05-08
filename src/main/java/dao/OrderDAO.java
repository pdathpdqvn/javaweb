package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Category;
import model.Order;

public class OrderDAO extends DBConnect{
	public boolean insertOrder(Order order) {
        boolean result = false;
        try {
            String sql = "insert into orders values(?,?,?,?)";
            PreparedStatement pst = conn.prepareStatement(sql);
            
            pst.setInt(1, order.getProductId());
            pst.setInt(2, order.getUid());
            pst.setInt(3, order.getQunatity());
            pst.setString(4, order.getDate());
            pst.executeUpdate();
            result = true;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return result;
    }
	

    
}
