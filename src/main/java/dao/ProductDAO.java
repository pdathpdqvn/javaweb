package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import model.Cart;
import model.Category;
import model.Product;

public class ProductDAO extends DBConnect{
	CategoryDAO categoryDAO = new CategoryDAO();
	public List<Product> getAll(){
		List<Product> products = new ArrayList<Product>();
		String sql = "SELECT productId,productName,imagePath,price,originalPrice,"
				+ "description,product.status,category.categoryId AS categoryId,categoryName"
				+ " FROM product INNER JOIN category"
				+ " ON product.categoryId = category.categoryId";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				Category category = categoryDAO.getById(rs.getInt("categoryId"));
				Product product = new Product(rs.getInt("productId"), 
						rs.getString("productName"),
						rs.getString("imagePath"),
						rs.getInt("price"),
						rs.getInt("originalPrice"), 
						rs.getString("description"), 
						rs.getInt("status"), 
						category
					);				
				products.add(product);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return products;
	}
	public Product getById(int id) {
		String sql = "SELECT * FROM product WHERE productId=?";		
		try {
			PreparedStatement pst= conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				Category category = categoryDAO.getById(rs.getInt("categoryId"));
				Product product = new Product(rs.getInt("productId"), 
						rs.getString("productName"),
						rs.getString("imagePath"),
						rs.getInt("price"),
						rs.getInt("originalPrice"), 
						rs.getString("description"), 
						rs.getInt("status"), 
						category);	
				return product;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
public List<Product> getByName(String productName){
		
		List<Product> products = new ArrayList<Product>();
		String sql = "SELECT * FROM product WHERE productName LIKE ?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, "%" + productName + "%");
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				Category category = categoryDAO.getById(rs.getInt("categoryId"));
				Product product = new Product(rs.getInt("productId"), 
						rs.getString("productName"),
						rs.getString("imagePath"),
						rs.getInt("price"),
						rs.getInt("originalPrice"), 
						
						rs.getString("description"), 
						rs.getInt("status"), 
						category
					);				
				products.add(product);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return products;
		}
	
	
	public List<Product> getProductByCateId(int categoryId){
		
		List<Product> products = new ArrayList<Product>();
		String sql = "SELECT * FROM product WHERE categoryId=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, categoryId);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				Category category = categoryDAO.getById(rs.getInt("categoryId"));
				Product product = new Product(rs.getInt("productId"), 
						rs.getString("productName"),
						rs.getString("imagePath"),
						rs.getInt("price"),
						rs.getInt("originalPrice"), 
						
						rs.getString("description"), 
						rs.getInt("status"), 
						category
					);				
				products.add(product);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return products;
		}
	

	public List<Cart> getCartProducts(ArrayList<Cart> cartList){
		List<Cart> list = new ArrayList<Cart>();
		if(cartList.size()>0) {
			for (Cart cart : cartList) {
				String sql = "select * from product where productId=?";
				try {
					PreparedStatement pst = conn.prepareStatement(sql);
					pst.setInt(1, cart.getProductId());
					ResultSet rs = pst.executeQuery();
					while(rs.next()) {
						Category category = categoryDAO.getById(rs.getInt("categoryId"));
						Cart c = new Cart();
						c.setProductId(rs.getInt("productId"));
						c.setProductName(rs.getString("productName"));
						c.setCategory(category);
						c.setImagePath(rs.getString("imagePath"));
						c.setPrice(rs.getInt("price"));
						list.add(c);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}				
			}
		}
		return list;
	}
	

	
	public void insert(Product product) {
		
		String sql = "INSERT INTO Product values(?,?,?,?,?,?,?,?)";
		
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, product.getProductId());
			pst.setString(2, product.getProductName());
			pst.setString(3, product.getImagePath());
			pst.setInt(4, product.getPrice());
			pst.setInt(5, product.getOriginalPrice());
			pst.setString(6, product.getDescription());
			pst.setInt(7, product.getStatus());
			pst.setInt(8, product.getCategory().getCategoryId());
			pst.executeUpdate();
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void update(Product product) {
		
		
		String sql = "UPDATE product SET productName=?,imagePath=?,price=?,originalPrice=?,description=?,status=?,categoryId=? WHERE productId=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, product.getProductName());
			pst.setString(2, product.getImagePath());
			pst.setInt(3, product.getPrice());
			pst.setInt(4, product.getOriginalPrice());
			pst.setString(5, product.getDescription());
			pst.setInt(6, product.getStatus());
			pst.setInt(7, product.getCategory().getCategoryId());
			pst.setInt(8, product.getProductId());
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void delete(int productId) {
		String sql = "DELETE FROM product WHERE productId=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, productId);
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public double getTotalCartPrice(ArrayList<Cart> cartList) {
		double sum = 0;
		try {
			if (cartList.size()>0) {
				
				for (Cart item : cartList) {
					String sql = "select price from product where productId=?";
					PreparedStatement pst = conn.prepareStatement(sql);
					ResultSet rs = pst.executeQuery();
					int price;
					while(rs.next()) {
						price = Integer.parseInt(rs.getString("price"));
						sum+= price* item.getQuantity();
						
						
					}
				}
				
				
				
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return sum;
		
	}
	
	
}
