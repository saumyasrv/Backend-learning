package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.catalina.filters.RequestDumperFilter;


public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		
		out.println("<h2>Welcome to Register Servlet</h2>");
		
		String name = req.getParameter("user_name");
		String password = req.getParameter("user_password");
		String email = req.getParameter("user_email");
		String gender = req.getParameter("user_gender");
		String course = req.getParameter("user_course");
		
		String condition = req.getParameter("condition");
		if(condition != null) {
		if(condition.equals("checked")) {
			out.println("<h2> Name : "+name+"</h2>");
			out.println("<h2> Password : "+password+"</h2>");
			out.println("<h2> Email : "+email+"</h2>");
			out.println("<h2> Gender : "+gender+"</h2>");
			out.println("<h2> Course : "+course+"</h2>");
			
			//assume this data is saved to DB
			
			RequestDispatcher rd = req.getRequestDispatcher("SuccessServlet");
			rd.forward(req, resp);

			
		} else {
			out.println("<h2>You have not accepted terms and conditions</h2>");
		     }
		} else {
			out.println("<h2>You have not accepted terms and conditions</h2>");
			// i want to include output of index.html
			//get the object of RequestDispatcher
			
			RequestDispatcher rd = req.getRequestDispatcher("index.html");
			
			//include method
			
			rd.include(req, resp);
          }
	}
	
	

}

