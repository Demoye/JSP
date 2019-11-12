package com.cslg.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class LogFilter
 */
@WebFilter("/LogFilter")
public class LogFilter implements Filter {
	private FilterConfig config;

	/**
	 * Default constructor.
	 */
	public LogFilter() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		config = null;
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		System.out.println("过滤开始");
		HttpServletRequest hrequest = (HttpServletRequest) request;
		String loginpage = config.getInitParameter("loginpage");
		String name = "";
		if (hrequest.getParameter("name") != null)
			name = hrequest.getParameter("name");
		System.out.println(name);
		//过滤以T开头的字符串
		if (name.startsWith("T")) {
			System.out.println("已过滤");
			request.setCharacterEncoding("utf-8");
			request.getRequestDispatcher(loginpage).forward(request, response);
		} else {
			System.out.println(hrequest.getContextPath());
			chain.doFilter(request, response);
			System.out.println("过滤结束");
		}

		// pass the request along the filter chain

	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
		this.config = fConfig;
	}

}