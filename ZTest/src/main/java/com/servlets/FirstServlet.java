package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.ResponseCache;
import java.util.Date;

import javax.servlet.*;

/** Here we are creating a servlet using the Servlet interface*/

public class FirstServlet implements Servlet{

	ServletConfig config;
	//lifecycle methods
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		this.config = config;
		System.out.println("Creating Object of Servlet....");
		
	}
	
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		System.out.println("Servicing....");
		/**this won't be visible on the browser because it will be printed on console  as we are using a simple
		 *  print statement. To print on browser we will use the ServletResponse res and set its content type.
		 */
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		out.println("<h1>this is my output from the servlet</h1>");
		out.println("<h1>Today's date and time: "+ new Date().toString()+ "</h1>");
	}
	
	@Override
	public void destroy() {
		System.out.println("Destroying Servlet Object....");
		
	}
	
	//non-lifecycle methods

	@Override
	public ServletConfig getServletConfig() {
	
		return this.config;
		}

	@Override
	public String getServletInfo() {
		
		return "Created by Saumya Srivastava";
	}

}
