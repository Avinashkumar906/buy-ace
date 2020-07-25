package com.buyace.core.beans;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class CartItem {
	@Column(name="productId",length=6)
	private int productId;
	@Column(name="productName",length=30)
	private String productName;
	@Column(name="companyName",length=30)
	private String companyName;
	@Column(name="Price",length=15)
	private double price;
	@Column(name="quantity", length=4)
	private int quantity;
	
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public CartItem(int productId, String productName, String companyName,
			double price) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.companyName = companyName;
		this.price = price;
		this.quantity = 1;
	}
	public CartItem() {
		super();
	}
	
//	@Override
//	public String toString() {
//		return "<tr class='px-3 text-center h4'><td>"+productId+"</th><th>"+productName+"</th><th>"+quantity+"</th><th>"+companyName+"</th><th>"+price+"</th><th><a href='RemoveCartItem?id="+productId+" 'class='btn btn-danger'>Remove</a></th></tr>";
//	}
}
