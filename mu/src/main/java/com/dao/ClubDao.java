package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Club;

public class ClubDao {

	private Connection conn;

	public ClubDao(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addClub(String clb) {
		boolean f = false;

		try {

			String sql = "insert into club1(club_name) values(?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, clb);
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;

			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return f;
	}

	public List<Club> getAllClubs() {
		List<Club> list = new ArrayList<Club>();
		Club c = null;

		try {
			String sql = "select * from club1";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				c = new Club();
				c.setId(rs.getInt(1));
				c.setClubname(rs.getString(2));
				list.add(c);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

}
