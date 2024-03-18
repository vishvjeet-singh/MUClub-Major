package com.entity;

public class user {
	
	private int id;
	private String email;
	private String fullname;
	private String dipartment;
	private String password;
	
	
	
	public user() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public user(String email, String fullname, String dipartment, String password) {
		super();
		this.email = email;
		this.fullname = fullname;
		this.dipartment = dipartment;
		this.password = password;
	}
	
	
	
	
	
}
