package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = "/login", name = "LoginServlet")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Login Servlet works!");//prints on console.
		//for printing on browser create response object
		PrintWriter writer = resp.getWriter();
		writer.println("<h1>From Servlet </h1>");
		String name = "Saumya";
		writer.println(name);
	}

}





/**In this class we are using the annotation @WebServlet to make this normal class as servlet and the annotation also has
the url pattern for mapping it to the users url without using the web.xml(Deployment Descriptor) file 
 */