package com.buyace.core.beans;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "deals")
public class Deals {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "itemId")	
	private int itemId;
	@Column(name="image")
	private String image;
	@Column(name="category")
	private String category;
	@Column(name="lable")
	private String lable;
	@Column(name="title")
	private String title;
	@Column(name="description")
	private String description;
	@Column(name="buttonText")
	private String buttonText;
	@Column(name="buttonUrl")
	private String buttonUrl;
	@Column(name="textColour")
	private String textColour;
	
	public int getItemId() {
		return itemId;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getLable() {
		return lable;
	}
	public void setLable(String lable) {
		this.lable = lable;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getButtonText() {
		return buttonText;
	}
	public void setButtonText(String buttonText) {
		this.buttonText = buttonText;
	}
	public String getButtonUrl() {
		return buttonUrl;
	}
	public void setButtonUrl(String buttonText) {
		this.buttonUrl = buttonUrl;
	}
	public String getTextColour() {
		return textColour;
	}
	public void setTextColour(String textColour) {
		this.textColour = textColour;
	}
	public Deals(String image, String category, String lable, String title, String description, String buttonText,
			String buttonUrl, String textColour) {
		super();
		this.image = image;
		this.category = category;
		this.lable = lable;
		this.title = title;
		this.description = description;
		this.buttonText = buttonText;
		this.buttonUrl = buttonUrl;
		this.textColour = textColour;
	}
	public Deals() {
		super();
	}

}
