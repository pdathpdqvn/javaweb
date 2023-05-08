package controller;

import java.io.IOException;
import java.util.Iterator;

import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Category;
import model.User;

@WebServlet(urlPatterns = {"/signup"})
public class SignUpController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/views/login/sign_up.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String repassword = req.getParameter("repassword");
		String fullname = req.getParameter("fullname");
		String phone = req.getParameter("phone");
		String address = req.getParameter("address");
		String suserId = req.getParameter("userId");
		
		int userId = Integer.parseInt(suserId);
		
		UserDAO userDAO = new UserDAO();
		
		User userCheckId = userDAO.getById(userId);	

		
		if (!password.equals(repassword)) {
			req.setAttribute("loi", "Mật khẩu nhập lại không đúng");
			req.getRequestDispatcher("/views/login/sign_up.jsp").forward(req, resp);
		}
		else {
			
			User userCheckMail = userDAO.checkUser(email);
			
			
			if(userCheckId != null) {
				req.setAttribute("loi", "Mã người dùng "+userId +" đã tồn tại");
				req.getRequestDispatcher("/views/login/sign_up.jsp").forward(req, resp);
			}else if(userCheckMail!= null) {
				req.setAttribute("loi", "Email "+ email +" đã tồn tại");
				req.getRequestDispatcher("/views/login/sign_up.jsp").forward(req, resp);
				
			}else {
				
				userDAO.signup(userId, email, repassword, fullname, phone, address);
				req.getRequestDispatcher("/views/login/login.jsp").forward(req, resp);
				req.setAttribute("signok", "Bạn đã tạo tài khoản thành công ");
			}			

		}
	}
	
	
	
}
