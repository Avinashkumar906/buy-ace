package com.buyace.core.beans;

import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ID")
	private int productId;
	@Column(name="PRODUCTNAME", nullable = false, length=30  )
	private String productName;
	@Column(name="COMPANY",length=50)
	private String companyName;
	@Column(name="PRICE", nullable = false, length=10)
	private double price;
	@Column(name="DESCRIPTION",length = 1000)
	private String description;
	@Column(name="CATEGORY", nullable = false, length=20)
	private String category;
	
	
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}

	public Product(String productName, String companyName, double price, String description,
			String category) {
		super();
		this.productName = productName;
		this.companyName = companyName;
		this.price = price;
		this.description = description;
		this.category = category;
		//this.image = image;
	}
	public Product() {
		super();
	}
//	@Override
//	public String toString() {
//		return "Product [productId=" + productId + ", productName="
//				+ productName + ", companyName=" + companyName + ", price="
//				+ price + ", description=" + description + ", category="
//				+ category + "]";
//	}
	
	
	
}
