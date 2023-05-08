package controller;

import java.io.IOException;

import dao.CategoryDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/delete_category"})
public class DeleteCategoryController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String sCategoryId = req.getParameter("id");
		try {
			int categoryId = Integer.parseInt(sCategoryId);
			CategoryDAO categoryDAO = new CategoryDAO();
			categoryDAO.delete(categoryId);
			resp.sendRedirect("list_category");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
