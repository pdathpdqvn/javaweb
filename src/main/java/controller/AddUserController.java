
package controller;

import java.awt.Image;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

import dao.CategoryDAO;
import dao.ProductDAO;
import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import model.Category;
import model.Product;
import model.User;

@WebServlet(urlPatterns = {"/add_user"})
public class AddUserController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/views/admin/add_user.jsp").forward(req, resp);
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
			if(roleCheck)
				role = 0;
			User userCheckId = userDAO.getById(userId);
			User userCheckEmail = userDAO.checkUser(email);
			if(userCheckId != null) {
				req.setAttribute("loi", "Mã người dùng"+userId +" đã tồn tại");
				req.getRequestDispatcher("/views/admin/add_user.jsp").forward(req, resp);
			}else if(userCheckEmail!= null) {
				req.setAttribute("loi", "Email "+ email +" đã tồn tại");
				req.getRequestDispatcher("/views/admin/add_user.jsp").forward(req, resp);
				
			}else {
				User user = new User(userId, email, password, fullname, phone, address, role);
				userDAO.insert(user);
				resp.sendRedirect("list_user");
			}			
			
		} catch (Exception e) {
			// TODO: handle exception
		}	
        
	}

}
