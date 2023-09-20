package com.shopnest.customer;

import com.shopnest.dbhandler.DataFetcher;

public class Validator {

	public static boolean valid(String user, String pass) {
		// TODO Auto-generated method stub
		String ans = "";
		if (user.isEmpty() || pass.isEmpty())
			return false;
		ans = DataFetcher.fetchPassword(user);
		if (ans.equals(pass))
			return true;
		else
			return false;

	}

}
