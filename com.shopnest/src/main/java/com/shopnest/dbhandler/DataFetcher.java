package com.shopnest.dbhandler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.shopnest.EncryDecry.EncryptDecrypt;

public class DataFetcher {

	public static String fetchPassword(String user) {
		// TODO Auto-generated method stub
		String finalPass = "";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopnest", "root", "sijauddin");
			PreparedStatement ps = conn.prepareStatement("select password from customer where username=?");
			ps.setString(1, user);
			ResultSet res = ps.executeQuery();
			res.next();
			finalPass = res.getString(1);// EncryptDecrypt.decrypt(res.getString(1));

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return EncryptDecrypt.decrypt(finalPass);

	}

	@SuppressWarnings("unchecked")
	public static List fetchUserInfo() {
		List ulist = new ArrayList();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopnest", "root", "sijauddin");
			Statement st = conn.createStatement();

			ResultSet rs = st.executeQuery("select id,username,email,age,password from customer");
			while (rs.next()) {
				String temp = rs.getString(1) + ":" + rs.getString(2) + ":" + rs.getString(3) + ":" + rs.getString(4)
						+ ":" + rs.getString(5);

				ulist.add(temp);
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ulist;
	}

	@SuppressWarnings("unchecked")
	public static List fetchProductInfo() {
		List prolist = new ArrayList();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopnest", "root", "sijauddin");
			Statement st = conn.createStatement();

			ResultSet rs = st.executeQuery("select * from product");
			while (rs.next()) {
				String temp = rs.getString(1) + ":" + rs.getString(2) + ":" + rs.getString(3) + ":" + rs.getInt(4) + ":"
						+ rs.getString(5);
				prolist.add(temp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return prolist;
	}

}
