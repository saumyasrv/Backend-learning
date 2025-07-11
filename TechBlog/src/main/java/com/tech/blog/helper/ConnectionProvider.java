package com.tech.blog.helper;

import java.sql.*;
public class ConnectionProvider {

	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			if(con==null) {
		//load driver class
			Class.forName("com.mysql.cj.jdbc.Driver");
			
		//create a connection
			String url = "jdbc:mysql://localhost:3306/techblog";
			String username = "root";
			String password = "root";
			con = DriverManager.getConnection(url, username, password);
		}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
