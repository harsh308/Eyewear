package com.datasource;

import java.sql.Connection;
import java.sql.DriverManager;

public class Datasource {

	public static Connection getConnection()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eyewear", "root", "root");
			return con;
		}
		catch (Exception e) 
		{
			System.out.println(e);
			return null;
		}
	}
}
