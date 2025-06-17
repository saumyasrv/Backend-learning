package com.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
//import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.Cookie;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet2")
public class Servlet2 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		//String name = request.getParameter("name"); this won't work here
		
		//getting all the cookies..
		
		//cookies return array
		Cookie cookies[] = request.getCookies();
		
		
		
		System.out.println(">>> Cookies received in Servlet2:");
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				System.out.println(cookie.getName() + " = " + cookie.getValue());
			}
		} else {
			System.out.println("No cookies received.");
		}
		
		
		
		boolean f=false;
		String name = "";
		
		if(cookies == null) {
			out.println("<h1>You are new user, go to homepage and submit your name1</h1>");
			return;
		} else {
			for(Cookie c: cookies) {
			
				String tempName = c.getName();
			    if (tempName.equals("user_name")) {
					f=true;
					
					name = c.getValue();
				}	
			}
		}
		
		if(f) {
		
		
		out.println("<h1>Hello ," + name + " welcome back to my website...</h1>");
		out.println("<h1>Thanks</h1>");
		
		
	} else {
		out.println("<h1>You are new user, go to homepage and submit your name2</h1>");

	}
	}


}
