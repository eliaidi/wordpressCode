package com.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by wxm-Imperio on.
 */
public class FirstFilter implements Filter {
	@Override
	public void destroy() {
		System.out.println("destroy-------firstFilter");
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
		System.out.println("start.........doFilter.......firstFilter");
		//filterChain.doFilter(servletRequest, servletResponse);

		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;
		//重定向
		response.sendRedirect(request.getContextPath() + "/main.jsp");
		//转发
		//request.getRequestDispatcher("main.jsp").forward(request, response);

		//request.getRequestDispatcher("main.jsp").include(request,response);
		System.out.println("End.........doFilter......firstFilter");
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("init............firstFilter");
	}
}
