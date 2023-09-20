package com.shopnest.customer;

import java.io.IOException;

//import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shopnest.dbhandler.DataInjector;

@WebServlet("/reg")
public class RegisterServlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String uname = req.getParameter("uname");
		String mail = req.getParameter("mail");
		String age = req.getParameter("age");
		String pass = req.getParameter("pass");

		String status = DataInjector.addCustomer(uname, mail, age, pass);

		resp.sendRedirect("login.jsp");

	}

}
