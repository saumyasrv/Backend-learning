package com.filters;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import javax.servlet.http.*;

public class TeacherAuthFilter implements Filter {
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession session = req.getSession(false);

        if (session != null) {
            String role = (String) session.getAttribute("role");
            if ("teacher".equals(role) || "admin".equals(role)) {
                chain.doFilter(request, response); // Allowed
                return;
            }
        }
        res.sendRedirect("login.jsp");
    }
}
