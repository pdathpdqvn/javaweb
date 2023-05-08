package controller;

import java.awt.Image;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.stream.Collectors;

import dao.CategoryDAO;
import dao.ProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import model.Category;
import model.Product;

@WebServlet(urlPatterns = {"/add_product"})
@MultipartConfig
public class AddProductController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CategoryDAO categoryDAO = new CategoryDAO();
		List<Category> categories = categoryDAO.getAll();
		req.setAttribute("categories", categories);
		req.getRequestDispatcher("/views/admin/add_product.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Part file = req.getPart("image");
		String imagePath = file.getSubmittedFileName();
		System.out.println("chon file : " + imagePath);
		String uploadPath = "D:/File dev/Java ITPlus/Modul3/HOCSEVERLET/ShopMayTinh/src/main/webapp/views/admin/assets/img/" + imagePath;
		System.out.println("Upload pt" + uploadPath);
		
		try {
			FileOutputStream fos = new FileOutputStream(uploadPath);
			InputStream is= file.getInputStream();
			
			byte[] data = new byte[is.available()];
			
			is.read(data);
			fos.write(data);
			fos.close();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
//        String imagePath = req.getParameter("imagePath");
        String sproductId = req.getParameter("productId");
		String productName = req.getParameter("productName");
		String sprice = req.getParameter("price");
		String soriginalPrice = req.getParameter("originalPrice");
		String description = req.getParameter("editor1");	
		boolean statusCheck = req.getParameter("status")!=null;
		String scategoryId = req.getParameter("category");
		
		ProductDAO productDAO = new ProductDAO();
		try {
			
			int productId = Integer.parseInt(sproductId);
			int price = Integer.parseInt(sprice);
			int originalPrice = Integer.parseInt(soriginalPrice);
			CategoryDAO categoryDAO = new CategoryDAO();
			Category category = categoryDAO.getById(Integer.parseInt(scategoryId));
			int status = 0;
			if(statusCheck)
				status = 1;
			Product productExits = productDAO.getById(productId);
			if(productExits == null) {
				
				Product product = new Product(productId,productName,imagePath,price,originalPrice,description,status,category);
				productDAO.insert(product);
				resp.sendRedirect("list_product");
			}else {
				req.setAttribute("loi", "Mã sản phẩm "+productId +" đã tồn tại");
				req.getRequestDispatcher("/views/admin/add_product.jsp").forward(req, resp);
			}			
			
		} catch (Exception e) {
			// TODO: handle exception
		}	
        
	}

}
