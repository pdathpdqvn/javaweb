package model;

import java.util.HashSet;
import java.util.Set;

public class Product {
	private int productId;
	private String productName;
	private String imagePath;
	private int price;
	private int originalPrice;
	private String description;
	private int status;
	private Category category;

	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getOriginalPrice() {
		return originalPrice;
	}
	public void setOriginalPrice(int originalPrice) {
		this.originalPrice = originalPrice;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	
	
	public Product() {
		super();
	}
	public Product(int productId, String productName,String imagePath, int price, int originalPrice, String description,
			int status, Category category) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.imagePath = imagePath;
		this.price = price;
		this.originalPrice = originalPrice;
		this.description = description;
		this.status = status;
		this.category = category;

	}	
}
