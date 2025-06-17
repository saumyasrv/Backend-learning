package com.servlets;

import java.io.IOException;

import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet1")
public class Servlet1 extends HttpServlet {


	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String name = request.getParameter("name");
		out.println("<h1>Hello ," + name + "welcome to my website...</h1>");
		out.println("<h1><a href='servlet2'>Go to Servlet 2</a></h1>");
		
		
		if (name == null || name.trim().isEmpty()) {
			out.println("<h2>Name is missing in the query parameter!</h2>");
			return;
		}
	

	/*Servlet 1 is taking the value of name from index.html but the servlet 2 can't take
	 *  the value of name from index.html as it is not mapped in that file (in form action), the servlet 2 is mapped in servlet1's
	 *  println so servlet 2 doesn't remember the value of name and when it tries to request is by getParameter, it doesn't get it 
	 *  from index.html**/ 
	
	//to solve this we will use a session tracking technique, we will create a cookie
	
		Cookie c = new Cookie("user_name", name);
		c.setPath("/"); // Make cookie accessible to all servlets in the app
		//c.setMaxAge(60 * 60);       // Optional: cookie will persist for 1 hour
		response.addCookie(c);
		System.out.println(">>> Cookie set: " + c.getName() + " = " + c.getValue()); // Debug log
		//cookies are textual information which are stored in key value pair format to the client's browser during multiple requests.
	}
		
	}
	
	


