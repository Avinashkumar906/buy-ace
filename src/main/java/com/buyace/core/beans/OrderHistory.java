package com.buyace.core.beans;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class OrderHistory {
	@Id
	@Column(name="orderId",length=10)
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int orderId;
	@Column(name="userName",length=30)
	private String userName;
	@Column(name="userId",length=10)
	private int userId;
	@Column(name="address" , length=255, nullable=false)
	private String address;
	@Column(name="userEmail" , length=50, nullable=false)
	private String userEmail;
	@Temporal(TemporalType.DATE)
	private Date orderDate;
	@Column(name="total" , length=15, nullable=false)
	private double total; 
	@ElementCollection
	private List<CartItem> cartItem = new ArrayList<CartItem>();
	
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public List<CartItem> getCartItem() {
		return cartItem;
	}
	public void setCartItem(List<CartItem> cartItem) {
		this.cartItem = cartItem;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public OrderHistory(String userName, int userId, String address, String userEmail, List<CartItem> cartItem) {
		super();
		this.userName = userName;
		this.userId = userId;
		this.address = address;
		this.userEmail = userEmail;
		this.cartItem = cartItem;
	}
	public OrderHistory() {
		super();
	}
	
	
}
