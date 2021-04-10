package model;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class User {
	private String username;
	private String password;

	public static boolean checkLogin(String username, String password) {
		List<User> listUser = new ArrayList<User>();
		ResultSet rs = ConnectDB.executeSQL("SELECT * FROM user");
		try {
			while (rs.next()) {
				String name = rs.getString(1);
				String pass = rs.getString(2);
				User user = new User(name, pass);
				listUser.add(user);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		for (User u : listUser) {
			if (u.getUsername().equals(username) && u.getPassword().equals(password))
				return true;
		}
		return false;
	}

	
	public User() {

	}

	public User(String username, String password) {
		this.username = username;
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
