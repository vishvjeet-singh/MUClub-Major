package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import com.mysql.cj.xdevapi.Statement;

public class DBConnection {

private static Connection conn ;
public static Connection getconn() {
	
	try{  
		Class.forName("com.mysql.cj.jdbc.Driver");  
		conn=DriverManager.getConnection(  "jdbc:mysql://localhost:3306/muclub","root","Kuku@123");  
	
		}catch(Exception e)
	{
			System.out.println(e);
	}
	return conn;
		  
		} 
}

	

