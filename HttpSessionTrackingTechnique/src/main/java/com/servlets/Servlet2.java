package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Servlet2")
public class Servlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false); //don't create a new session if doesn't exist
		String name = (String) session.getAttribute("name");
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		if(name!=null) {
			out.println("<h1>Welcome back "+name+"</h1>");

		} else {
			out.println("<h1>Session expired or not set, please go to index page</h1>");
		}
		
		
	}

	

}
