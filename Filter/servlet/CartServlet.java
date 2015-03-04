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

	private String action;//��ʾ���ﳵ�Ķ��� add show delete
	private ItemsDAO idao = new ItemsDAO();//��Ʒҵ���߼������

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		if(request.getParameter("action") != null) {
			this.action = request.getParameter("action");
			if(action.equals("add")) {
				if(addToCart(request,response)) {//����������Ʒ�����ﳵ
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

	//�����Ʒ�����ﳵ
	private boolean addToCart(HttpServletRequest request,HttpServletResponse response) {
		String id = request.getParameter("id");
		String number = request.getParameter("num");
		items items = idao.getItemsById(Integer.parseInt(id));
		//�Ƿ��ǵ�һ�θ����ﳵ�����Ʒ,��Ҫ��SESSION�д���һ���µĹ��ﳵ����
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
