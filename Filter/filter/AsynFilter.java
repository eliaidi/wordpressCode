package com.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * Created by wxm-Imperio.
 */
//×¢½â
@WebFilter(filterName = "AsynFilter", value = {"/AsynServlet"}, asyncSupported = true, dispatcherTypes = {DispatcherType.REQUEST,DispatcherType
		.ASYNC})

public class AsynFilter implements Filter {
	@Override
	public void destroy() {
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
		System.out.println("Start..........AsynFilter");
		filterChain.doFilter(servletRequest, servletResponse);
		System.out.println("End..........AsynFilter");
	}
}
