package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Cart;

@WebServlet(urlPatterns = {"/add_to_cart"})
public class AddToCartController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Cart> carts = new ArrayList<Cart>();
		int productId = Integer.parseInt(req.getParameter("id"));
		
		Cart cart = new Cart();
		cart.setProductId(productId);
		cart.setQuantity(1);
		
		HttpSession session = req.getSession();
		ArrayList<Cart> cart_list = (ArrayList<Cart>)session.getAttribute("cart-list");
		
		if(cart_list == null) {
			carts.add(cart);
			session.setAttribute("cart-list", carts);

		}else {
			carts = cart_list;
			boolean exist = false;
			carts.contains(cart);
			
			for (Cart c : cart_list) {
				if(c.getProductId()==productId) {
					exist = true;
				}
			}
			if(!exist) {
				carts.add(cart);
				resp.sendRedirect(req.getContextPath()+"/index");
			}else {
				cart.setQuantity(cart.getQuantity()+1);
				resp.sendRedirect(req.getContextPath()+"/index");
			}
		}
		
		
	}
}
