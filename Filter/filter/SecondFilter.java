package com.filter;


import javax.servlet.*;
import java.io.IOException;

/**
 * Created by wxm-Imperio.
 */
public class SecondFilter implements Filter {
	@Override
	public void destroy() {
		System.out.println("destroy------SecondFilter");
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("init------SecondFilter");
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
		System.out.println("Start---doFilter---SecondFilter");

		filterChain.doFilter(servletRequest, servletResponse);

		System.out.println("End---doFilter---SecondFilter");

	}
}
