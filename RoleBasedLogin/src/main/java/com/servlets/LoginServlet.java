package com.servlets;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;


import java.io.IOException;
import javax.servlet.*;

import javax.servlet.http.*;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        // Simple check (replace with real DB check later)
        if (username != null && password != null) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            session.setAttribute("role", role);

            switch (role) {
                case "admin":
                    response.sendRedirect("admin.jsp");
                    break;
                case "teacher":
                    response.sendRedirect("teacher.jsp");
                    break;
                case "student":
                    response.sendRedirect("student.jsp");
                    break;
                default:
                    response.sendRedirect("login.jsp");
            }
        } else {
            response.sendRedirect("login.jsp");
        }
    }
}
