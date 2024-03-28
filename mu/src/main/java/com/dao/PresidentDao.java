package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.president;

public class PresidentDao {

	private Connection conn;

	public PresidentDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean registerPresident(president p) 
	{
		boolean f= false;
		
		try {
			
			String sql="insert into(fullname,dipartment,designation,club,email,mobNo, password) values(?,?,?,?,?,?,?)";
			PreparedStatement ps =conn.prepareStatement(sql);
			ps.setString(1, p.getFullname());
			ps.setString(2, p.getDipartment());
			ps.setString(3, p.getDesignation());
			ps.setString(4, p.getClub());
			ps.setString(5, p.getEmail());
			ps.setString(6, p.getMobNo());
			ps.setString(7, p.getPassword());
			int i =ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

			
		} catch (Exception e) {
           e.printStackTrace();
		}
		
		return f;
		
	}
	
	
}
