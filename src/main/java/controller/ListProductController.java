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


@WebServlet(urlPatterns = {"/list_product"})
public class ListProductController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Product> products = new ArrayList<Product>();
		ProductDAO productDAO = new ProductDAO();
		products = productDAO.getAll();
		
		req.setAttribute("products", products);
		CategoryDAO categoryDAO = new CategoryDAO();
		List<Category> categories = categoryDAO.getAll();
		req.setAttribute("categories", categories);
		
		req.getRequestDispatcher("/views/admin/list_product.jsp").forward(req, resp);
	}
}



