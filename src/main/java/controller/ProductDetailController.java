package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dao.CategoryDAO;
import dao.ProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Category;
import model.Product;

@WebServlet(urlPatterns = {"/product-detail"})
public class ProductDetailController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String sproductId = req.getParameter("productId");
		int productId = Integer.parseInt(sproductId);
		ProductDAO productDAO = new ProductDAO();
		Product product = productDAO.getById(productId);
		List<Category> categories = new ArrayList<Category>();
		CategoryDAO categoryDAO = new CategoryDAO();
		categories = categoryDAO.getAll();
		req.setAttribute("categories", categories);
		req.setAttribute("products", product);
		req.getRequestDispatcher("/views/client/product-detail.jsp").forward(req, resp);
	}
	
	
}
