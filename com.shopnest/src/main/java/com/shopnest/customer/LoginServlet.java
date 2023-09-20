package com.shopnest.customer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/log")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user = req.getParameter("name");
		String pass = req.getParameter("password");
		boolean check = Validator.valid(user, pass);
		if (check == true && user.equals("adminn")) {
			resp.sendRedirect("admin.jsp");
		} else if (check == true) {
			resp.sendRedirect("home.jsp");
		} else {
			resp.sendRedirect("login.jsp");
		}
	}

}
