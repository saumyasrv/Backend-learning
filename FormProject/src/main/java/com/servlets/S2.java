package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/S2")
public class S2 extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int nn1 = Integer.parseInt(request.getParameter("n1"));
		int nn2 = Integer.parseInt(request.getParameter("n2"));
		
		int p = nn1*nn2;
		
		int sum = (int) request.getAttribute("sum");
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		out.println("<h1> Sum is = " + sum + "</h1>");
		out.println("<h1> Product is = " + p + "</h1>");
		
	}


}
