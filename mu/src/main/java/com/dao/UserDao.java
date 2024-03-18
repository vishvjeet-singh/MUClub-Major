package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.user;

public class UserDao {
	
	private Connection conn;

	public UserDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
   public boolean register(user u) {
	   
	   
	   boolean f=false;
	   
	   try {
		   
		   String sql= "INSERT INTO  user_dtls1(email,fullname,dipartment,password) values(?,?,?,?)";
		   
		   PreparedStatement ps = conn.prepareStatement(sql);
		   ps.setString(1, u.getEmail());
		   ps.setString(2, u.getFullname());
		   ps.setString(3, u.getDipartment());
		   ps.setString(4, u.getPassword());
		   int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
   }
	
	
}
