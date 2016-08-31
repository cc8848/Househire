package com.cstp.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CharacterEncodingFilter extends HttpServlet implements Filter {

	protected FilterConfig filterConfig = null;
	protected String encoding = "";
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
			FilterChain filterChain) throws IOException, ServletException {
		// TODO Auto-generated method stub

		if(encoding != null){
			servletRequest.setCharacterEncoding(encoding);
			filterChain.doFilter(servletRequest, servletResponse);
		}
	}

	 public void init(FilterConfig filterConfig) throws ServletException 
	  { 
		 this.filterConfig = filterConfig; 
		 this.encoding = filterConfig.getInitParameter("encoding");
	 } 

	/**
	 * Constructor of the object.
	 */
	public CharacterEncodingFilter() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
		filterConfig = null;
		encoding = null;
	}

	


}
