

package controller;

import java.io.IOException;

import dao.ProductDAO;
import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/delete_user"})
public class DeleteUserController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String sUserId = req.getParameter("id");
		try {
			int userId = Integer.parseInt(sUserId);
			UserDAO userDAO = new UserDAO();
			userDAO.delete(userId);
			resp.sendRedirect("list_user");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
