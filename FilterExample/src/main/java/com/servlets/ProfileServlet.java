package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//I want to check that the user that comes to this page is an authenticated user or not. For this we will use filter.
		
		
		PrintWriter out = response.getWriter();
		
		System.out.println("Profile Servlet executed...");
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Servlet Profile Servlet</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>Welcome to profile page</h1>");
		out.println("<h1>This is profile page</h1>");
		out.println("</body>");
		out.println("</html>");

		
//		out.println("<!DOCTYPE html>"
//				+ "<html>"
//				+ "<head>"
//				+ "<title>Servlet Profile Servlet</title>"
//				+ "</head>"
//				+ "<body>"
//				+ "<h1>Welcome to profile page</h1>"
//				+ "<h1>This is profile page</h1>"
//				+ "</body>"
//				+ "</html>");
		
	}

	

}
