
package controller;

import java.io.IOException;

import dao.CategoryDAO;
import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Category;
import model.User;


@WebServlet(urlPatterns = {"/update_user"})
public class UpdateUserController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String sUserId = req.getParameter("id");
		UserDAO userDAO = new UserDAO();
		try {
			int userId = Integer.parseInt(sUserId);
			User user = new User();
			user = userDAO.getById(userId);
			req.setAttribute("user", user);
			req.getRequestDispatcher("/views/admin/update_user.jsp").forward(req, resp);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 String sUserId = req.getParameter("userId");
	        String fullname = req.getParameter("fullname");
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			String phone = req.getParameter("phone");
			String address = req.getParameter("address");
			boolean roleCheck = req.getParameter("role")!=null;
			
			
			UserDAO userDAO = new UserDAO();
			try {
				
				int userId = Integer.parseInt(sUserId);

				int role = 1;
				if(roleCheck) {role = 0;}

				User user = new User(userId, email, password, fullname, phone, address, role);
				userDAO.update(user);
				resp.sendRedirect("list_user");
		
				
			} catch (Exception e) {
				// TODO: handle exception
			}	
	}
}
