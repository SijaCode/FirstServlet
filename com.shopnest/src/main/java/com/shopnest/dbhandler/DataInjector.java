package com.shopnest.dbhandler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.shopnest.EncryDecry.EncryptDecrypt;

public class DataInjector {

	@SuppressWarnings("finally")
	public static String addCustomer(String uname, String mail, String age, String pass) {
		String driver = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/shopnest";
		String userr = "root";
		String passs = "sijauddin";
		String sql = "insert into customer(username,email,age,password) values(?,?,?,?)";
		String regStatus = "";
		try {
			Class.forName(driver);
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopnest", userr, passs);
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, uname);
			ps.setString(2, mail);
			ps.setString(3, age);
			String editedPass = EncryptDecrypt.encrypt(pass);
			ps.setString(4, editedPass);
			ps.executeUpdate();

			regStatus = "success";

		} catch (Exception ex) {
			System.out.println("problem in adding customer");
			ex.printStackTrace();
			regStatus = "fail";
		} finally {
			return regStatus;

		}

	}

	public static void addProduct(String prodid, String prodname, String proddes, int prodprice, String prodimg) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopnest", "root", "sijauddin");
			PreparedStatement ps = conn.prepareStatement("insert into product values(?,?,?,?,?)");
			ps.setString(1, prodid);
			ps.setString(2, prodname);
			ps.setString(3, proddes);

			ps.setInt(4, prodprice);
			ps.setString(5, prodimg);
			ps.executeUpdate();

		} catch (Exception ex) {
			System.out.println("problem in adding Product");
			ex.printStackTrace();

		}

	}

}
