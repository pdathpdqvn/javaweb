
package controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import dao.CategoryDAO;
import dao.ProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import model.Category;
import model.Product;


@WebServlet(urlPatterns = {"/update_product"})
public class UpdateProductController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String sProductId = req.getParameter("id");
		ProductDAO productDAO = new ProductDAO();
		try {
			int productId = Integer.parseInt(sProductId);
			Product product = new Product();
			product = productDAO.getById(productId);
			req.setAttribute("product", product);
			CategoryDAO categoryDAO = new CategoryDAO();
			List<Category> categories = categoryDAO.getAll();
			req.setAttribute("categories", categories);
			req.getRequestDispatcher("/views/admin/update_product.jsp").forward(req, resp);
		} catch (Exception e) {
			// TODO: handle exception
		}
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
		
//		String imagePath = req.getParameter("imagePath");
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
			if(statusCheck) {status = 1;}
			Product product = new Product(productId,productName,imagePath,price,originalPrice,description,status,category);
			productDAO.update(product);
			resp.sendRedirect("list_product");

		} catch (Exception e) {
			// TODO: handle exception
		}	
	}
}
