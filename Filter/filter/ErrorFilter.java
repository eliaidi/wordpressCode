package com.filter;

import javax.servlet.*;
import java.io.IOException;

/**
 * Created by wxm-Imperio.
 */
public class ErrorFilter implements Filter {
	@Override
	public void destroy() {

	}
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
	}
	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
		System.out.println("��⵽�д�����Ϣ");
		filterChain.doFilter(servletRequest,servletResponse);
	}
}
