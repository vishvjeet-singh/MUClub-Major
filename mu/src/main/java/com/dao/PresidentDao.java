package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Club;
import com.entity.president;

public class PresidentDao {

	private Connection conn;

	public PresidentDao(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean registerPresident(president p) {
		boolean f = false;

		try {

			String sql = "INSERT INTO president1(fullname,dipartment,designation,club,email,mobNo, password) values(?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, p.getFullname());
			ps.setString(2, p.getDipartment());
			ps.setString(3, p.getDesignation());
			ps.setString(4, p.getClub());
			ps.setString(5, p.getEmail());
			ps.setString(6, p.getMobNo());
			ps.setString(7, p.getPassword());
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;

	}

	public List<president> getAllPresident() {
		List<president> list = new ArrayList<president>();
		president p = null;

		try {

			String sql = "select * from president1 order by Id desc";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				p = new president();
				p.setId(rs.getInt(1));
				p.setFullname(rs.getString(2));
				;
				p.setDipartment(rs.getString(3));
				p.setDesignation(rs.getString(4));
				p.setClub(rs.getString(5));
				p.setEmail(rs.getString(6));
				p.setMobNo(rs.getString(7));
				p.setPassword(rs.getString(8));

				list.add(p);
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;

	}

	public president getPresidentById(int id) {
		president p = null;

		try {

			String sql = "select * from president1 where Id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				p = new president();
				p.setId(rs.getInt(1));
				p.setFullname(rs.getString(2));
				;
				p.setDipartment(rs.getString(3));
				p.setDesignation(rs.getString(4));
				p.setClub(rs.getString(5));
				p.setEmail(rs.getString(6));
				p.setMobNo(rs.getString(7));
				p.setPassword(rs.getString(8));

			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return p;

	}
	
	
	public boolean updatePresident(president p) {
		boolean f = false;

		try {

			String sql = "update  president1 set fullname=?,dipartment=?,designation=?,club=?,email=?,mobNo=?, password=? where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, p.getFullname());
			ps.setString(2, p.getDipartment());
			ps.setString(3, p.getDesignation());
			ps.setString(4, p.getClub());
			ps.setString(5, p.getEmail());
			ps.setString(6, p.getMobNo());
			ps.setString(7, p.getPassword());
			ps.setInt(0, p.getId());
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
