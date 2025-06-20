package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Servlet1")
public class Servlet1 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("user_name");
		
	   PrintWriter out = response.getWriter() ;
	   out.println("<h1>Your name is : " + name + "</h1>");
	   
	   //out.println("<a href='Servlet2?user="+name+"'>Go to Second Servlet</a>");
	   
	   //hidden form field:
	   
	   out.println(""
	   		+ "<form action='Servlet2'>"
	   		+ "<input type='hidden' name='user_name' value='"+name+"'/>"
	   		+ "<button>Go to 2nd servlet</button>"
	   		+ ""
	   		+ "</form>"
	   		);
	   
	}

	

}
