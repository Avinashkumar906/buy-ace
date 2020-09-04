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
	@Column(name="item",length=20)
	private String item;
	@Column(name="lable",length=30)
	private String lable;
	@Column(name="title",length=30)
	private String title;
	@Column(name="description",length=30)
	private String description;
	@Column(name="buttonText", length=10)
	private String buttonText;
	@Column(name="buttonUrl", length=30)
	private String buttonUrl;
	@Column(name="textColour", length=10)
	private String textColour;
	
	public int getItemId() {
		return itemId;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
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
	public Deals(String item, String lable, String title, String description, String buttonText,
			String buttonUrl, String textColour) {
		super();
		this.item = item;
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
