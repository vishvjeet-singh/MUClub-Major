package com.entity;

public class Club {
	
	public Club() {
		super();
		// TODO Auto-generated constructor stub
	}
	private int id;
	private String clubname;
	public Club(int id, String clubname) {
		super();
		this.id = id;
		this.clubname = clubname;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getClubname() {
		return clubname; 
	}
	public void setClubname(String clubname) {
		this.clubname = clubname;
	}
	
	

}
