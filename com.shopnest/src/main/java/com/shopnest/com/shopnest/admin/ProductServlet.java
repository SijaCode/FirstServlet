package com.shopnest.com.shopnest.admin;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shopnest.dbhandler.DataInjector;

@WebServlet("/addPro")
public class ProductServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		String prodid = req.getParameter("proid");
		String prodname = req.getParameter("proname");
		String proddes = req.getParameter("prodes");
		int prodprice = Integer.parseInt(req.getParameter("proprice"));
		String prodimg = req.getParameter("proimg");
		DataInjector.addProduct(prodid, prodname, proddes, prodprice, prodimg);
		resp.sendRedirect("admin.jsp");

	}
}
