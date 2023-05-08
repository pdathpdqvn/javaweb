package controller;

import java.io.IOException;

import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

@WebServlet(urlPatterns = {"/login"})
public class LoginController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/views/login/login.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		UserDAO userDAO = new UserDAO();
		
		
		User user = userDAO.login(email, password);

		
		System.out.println(user);
		if(user ==null) {
			req.setAttribute("errorMsg", "Email hoặc mật khẩu sai");
			req.getRequestDispatcher("/views/login/login.jsp").forward(req, resp);

		}else {
			HttpSession session  = req.getSession();
			session.setAttribute("usercheck", user);
			session.setAttribute("email", user.getEmail());
			session.setAttribute("fullname", user.getFullname());
			session.setAttribute("role", user.getRole());
			session.setAttribute("address", user.getAddress());
			resp.sendRedirect("index");
		}
	}
}
