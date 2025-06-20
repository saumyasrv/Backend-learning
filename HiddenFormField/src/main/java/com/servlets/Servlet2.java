package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Servlet2")
public class Servlet2 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 PrintWriter out = response.getWriter() ;
		 out.println("<h1 style='color:blue;'>Welcome to servlet 2</h1>");
		 
		 String name = request.getParameter("user_name");
		 out.println("<h1 style='color:red;'>Welcome back "+name+"</h1>");

		 
	}


}
