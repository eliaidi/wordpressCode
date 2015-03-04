package com.servlet;

import com.DAO.ItemsDAO;
import com.entity.items;
import com.entity.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by wxm-Imperio on 2015/2/20.
 */
@WebServlet(name = "CartServlet")
public class CartServlet extends HttpServlet {

	private String action;//表示购物车的动作 add show delete
	private ItemsDAO idao = new ItemsDAO();//商品业务逻辑类对象

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		if(request.getParameter("action") != null) {
			this.action = request.getParameter("action");
			if(action.equals("add")) {
				if(addToCart(request,response)) {//如果是添加商品进购物车
					request.getRequestDispatcher("jspViewList/success.jsp").forward(request,response);
				}else {
					request.getRequestDispatcher("jspViewList/failure.jsp").forward(request,response);
				}
			}
			if(action.equals("show")) {
				request.getRequestDispatcher("jspViewList/cart.jsp").forward(request,response);
			}
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	//添加商品进购物车
	private boolean addToCart(HttpServletRequest request,HttpServletResponse response) {
		String id = request.getParameter("id");
		String number = request.getParameter("num");
		items items = idao.getItemsById(Integer.parseInt(id));
		//是否是第一次给购物车添加商品,需要给SESSION中创建一个新的购物车对象
		if(request.getSession().getAttribute("cart") == null) {
			Cart cart = new Cart();
			request.getSession().setAttribute("cart",cart);
		}
		Cart cart = (Cart)request.getSession().getAttribute("cart");
		if(cart.addGoodsInCart(items,Integer.parseInt(number))) {
			return true;
		}else {
			return false;
		}
	}
}
