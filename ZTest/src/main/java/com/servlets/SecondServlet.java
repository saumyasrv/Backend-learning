package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**Creating a servlet by extending the GenericServlet abstract class; it has only one method which is not overridden,
 * the rest 4 methods of the interface Servlet are already overridden in this abstract class*/

public class SecondServlet extends GenericServlet {

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
      System.out.println("This servlet is using GenericServlet!"); //output on console
      res.setContentType("text/html");
      PrintWriter out = res.getWriter();
      out.println("<h1>This is my second servlet using GenericServlet</h1>");
      }

}
