package com.buyace.core.beans;

import java.sql.Blob;

import javax.persistence.*;

@Entity
@Table(name = "product")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ID")
	private int productId;
	@Column(name="PRODUCTNAME", nullable = false, length=50  )
	private String productName;
	@Column(name="PRODUCTLABEL")
	private String productLabel;
	@Column(name="MKTTEXT")
	private String mktText;
	@Column(name="COMPANY",length=50)
	private String companyName;
	@Column(name="PRICE", nullable = false, length=10)
	private double price;
	@Column(name="DESCRIPTION",length = 1024)
	private String description;
	@Column(name="IMAGE",length = 1024)
	private String image;
	@Column(name="CATEGORY", nullable = false, length=20)
	private String category;

	public String getProductLabel() {
		return productLabel;
	}
	public void setProductLabel(String productLabel) {
		this.productLabel = productLabel;
	}
	public String getMktText() {
		return mktText;
	}
	public void setMktText(String mktText) {
		this.mktText = mktText;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
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

	public Product(String productName, String productLabel, String mktText, String companyName, double price, String description, String image, String category) {
		super();
		this.productName = productName;
		this.productLabel = productLabel;
		this.mktText = mktText;
		this.companyName = companyName;
		this.price = price;
		this.description = description;
		this.image = image;
		this.category = category;
	}

	public Product() {
		super();
	}
	
}
