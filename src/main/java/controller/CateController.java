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


@WebServlet(urlPatterns = {"/category"})
public class CateController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String scategoryId = req.getParameter("categoryId");
		int categoryId = Integer.parseInt(scategoryId);
		ProductDAO productDAO = new ProductDAO();
		List<Product> productscate = productDAO.getProductByCateId(categoryId);
		List<Category> categories = new ArrayList<Category>();
		CategoryDAO categoryDAO = new CategoryDAO();
		categories = categoryDAO.getAll();
		req.setAttribute("categories", categories);
		req.setAttribute("products", productscate);
		req.getRequestDispatcher("/views/client/product.jsp").forward(req, resp);
		
	}
	
	
}
