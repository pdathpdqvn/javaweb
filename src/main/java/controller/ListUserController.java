
package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dao.CategoryDAO;
import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Category;
import model.User;

@WebServlet(urlPatterns = {"/list_user"})
public class ListUserController extends HttpServlet{
	private CategoryDAO categoryDAO;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserDAO userDAO = new UserDAO();
		List<User> users = new ArrayList<User>();
		
		users = userDAO.getAll();
		req.setAttribute("users", users);
		req.getRequestDispatcher("/views/admin/list_user.jsp").forward(req, resp);
	}
}
