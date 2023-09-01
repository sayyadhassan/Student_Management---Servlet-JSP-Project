package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB_Connection {

	public static Connection con;
	
	public static Connection getConnection() {
		
		try {
//			Step 1- Load Driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			
//			Step 2 - Create Connection 
		 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_database","root","hassan786");
		 System.out.println("connection created");
		}
		
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		return con;
	}
}
