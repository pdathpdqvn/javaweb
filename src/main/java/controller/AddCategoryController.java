package controller;

import java.io.IOException;

import dao.CategoryDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Category;


@WebServlet(urlPatterns = {"/add_category"})
public class AddCategoryController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//resp.sendRedirect("/eShopOnWeb/views/admin/add_category.jsp");
		req.getRequestDispatcher("/views/admin/add_category.jsp").forward(req, resp);
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
			Category categoryExits = categoryDAO.getById(categoryId);
			if(categoryExits == null) {
				Category category = new Category(categoryId, categoryName, status);
				categoryDAO.insert(category);
				resp.sendRedirect("list_category");
			}else {
				req.setAttribute("loi", "Mã loại sản phẩm "+categoryId +" đã tồn tại");
				req.getRequestDispatcher("/views/admin/add_category.jsp").forward(req, resp);
			}			
			
		} catch (Exception e) {
			// TODO: handle exception
		}	
	}
}
