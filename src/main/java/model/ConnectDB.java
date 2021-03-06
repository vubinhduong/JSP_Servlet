package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class ConnectDB {

	public static Connection connectDB() {
		Connection conn = null;
		try {
			String db = "db_07";
			String admin = "test123";
			String password = "test123";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db, admin, password);
			System.out.println("Connect DB successfully!");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Connect DB failed!");
		}
		return conn;
	}

	
	public static void closeConnectDB(Connection conn) {
		try {
			if (conn != null) {
				conn.close();
				System.out.println("Close connect DB successfully!");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Close connect DB failed!");
		}
	}
	
	
	//method thực thi sql và trả lại kết quả ResultSet
	public static ResultSet executeSQL(String sql) {
		Connection conn = connectDB();
		ResultSet rs = null;
		try {
			Statement statement = conn.createStatement();
			rs = statement.executeQuery(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	
	//method thực thi sql và không trả lại gì
		public static void executeSQL2(String sql) {
			Connection conn = connectDB();
			try {
				Statement statement = conn.createStatement();
				statement.execute(sql);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
}
