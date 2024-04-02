package com.entity;

public class president {
	
	private int id;
	private String fullname;
	private String dipartment;
	private String designation;
	private String club;
	private String  email;
	private String  mobNo;
	private String password;
	public president() {
		super();
		// TODO Auto-generated constructor stub
	}
	public president(String fullname, String dipartment, String designation, String club, String email, String mobNo,
			String password ) {
		super();
		this.fullname = fullname;
		this.dipartment = dipartment;
		this.designation = designation;
		this.club = club;
		this.email = email;
		this.mobNo = mobNo;
		this.password = password;
	}
	
	public president(int id, String fullname, String dipartment, String designation, String club, String email,
			String mobNo, String password) {
		super();
		this.id = id;
		this.fullname = fullname;
		this.dipartment = dipartment;
		this.designation = designation;
		this.club = club;
		this.email = email;
		this.mobNo = mobNo;
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getDipartment() {
		return dipartment;
	}
	public void setDipartment(String dipartment) {
		this.dipartment = dipartment;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getClub() {
		return club;
	}
	public void setClub(String club) {
		this.club = club;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobNo() {
		return mobNo;
	}
	public void setMobNo(String mobNo) {
		this.mobNo = mobNo;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	

}
