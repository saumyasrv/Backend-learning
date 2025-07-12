package com.tech.blog.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.Message;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
	//fetch username and password
		String userEmail = request.getParameter("email");
		String userPassword = request.getParameter("password");
		
		UserDao userDao = new UserDao(ConnectionProvider.getConnection());
		
		User user= userDao.getUserByEmailAndPassword(userEmail, userPassword);
		
		if(user==null) {
			//login error...
//			out.println("Invalid details..try again!");
			Message msg = new Message("Invalid details! try with another", "error", "alert-danger"); //check the css class in bootstrap4
			
			HttpSession session = request.getSession();
			session.setAttribute("msg", msg);
			
			response.sendRedirect("login_page.jsp");
		} else {
			//login success...
			HttpSession session = request.getSession();
			session.setAttribute("currentUser", user);
			response.sendRedirect("profile_page.jsp");
		}
	}

}
