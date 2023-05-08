package controller;

import java.io.IOException;

import dao.CategoryDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Category;


@WebServlet(urlPatterns = {"/update_category"})
public class UpdateCategoryController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String sCategoryId = req.getParameter("id");
		CategoryDAO categoryDAO = new CategoryDAO();
		try {
			int categoryId = Integer.parseInt(sCategoryId);
			Category category = new Category();
			category = categoryDAO.getById(categoryId);
			req.setAttribute("category", category);
			req.getRequestDispatcher("/views/admin/update_category.jsp").forward(req, resp);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String scategoryId = req.getParameter("categoryId");
		String categoryName = req.getParameter("categoryName");
		boolean statusCheck = req.getParameter("status")!=null;
		CategoryDAO categoryDAO = new CategoryDAO();
		try {
			int categoryId = Integer.parseInt(scategoryId);
			int status = 0;
			if(statusCheck)
				status = 1;		
			Category category = new Category(categoryId, categoryName, status);
			categoryDAO.update(category);
			resp.sendRedirect("list_category");								
		} catch (Exception e) {
			// TODO: handle exception
		}	
	}
}
