
package controller;

import java.io.IOException;

import dao.ProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/delete_product"})
public class DeleteProductController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String sProductId = req.getParameter("id");
		try {
			int productId = Integer.parseInt(sProductId);
			ProductDAO productDAO = new ProductDAO();
			productDAO.delete(productId);
			resp.sendRedirect("list_product");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
