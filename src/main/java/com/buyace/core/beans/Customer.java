package com.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Customer {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	@Column(length=4)
	private int userid;
	@Column(name="username", length=20, nullable=false)
	private String name;
	@Column(name="usermail", length=50 , nullable=false)
	private String email;
	@Column(name="usermobile", length=15, unique=true)
	private long mobile;
	@Column(name="userpass", length=20, nullable=false)
	private String password;
	@Column(name="gender", length=10)
	private String gender;
	@Column(name="role", length=5 )
	private String role = "User";
		
	public Customer() {
		super();
	}

	public Customer(String name, String email, long mobile, String password, String gender) {
		super();
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.password = password;
		this.gender = gender;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getMobile() {
		return mobile;
	}

	public void setMobile(long mobile) {
		this.mobile = mobile;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "<tr class='px-3 text-center h4'><td>"+userid+"</th><th>"+name+"</th><th>"+mobile+"</th><th>"+gender+"</th><th>"+role+"</th><th>"+email+"</th><th><a href='RemoveCustomer?id="+userid+" 'class='btn btn-danger'>Remove</a></th></tr>";
	}
		
}
