package com.dao;

import java.security.DrbgParameters.Reseed;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
   
   public user login(String em , String psw) {
	   
	   user u =null;
	   
	   try {
		   
		   String sql = "select * from user_dtls1 where email=? and password=?";
		   PreparedStatement ps=conn.prepareStatement(sql);
		   ps.setString(1, em);
		   ps.setString(2, psw);
		   
		   ResultSet rs = ps.executeQuery();
		   
		   while (rs.next()) {
			   
			   u=new user();
			   u.setId(rs.getInt(1));
			   u.setEmail(rs.getString(2));
			   u.setFullname(rs.getString(3));
			   u.setDipartment(rs.getString(4));
			   u.setPassword(rs.getString(5));
			
		}
		   
		   
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	   
	   
	return u;
	
}
	
	
}
