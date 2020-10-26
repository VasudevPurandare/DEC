package edu.osu.cse5234.business.view;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="ITEM")
public class Item implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ID")
	private int id;
	
	@Column(name = "ITEM_NUMBER")
	private int itemNumber;
	
	@Column(name = "NAME")
	private String name;
	
	@Column(name = "COMPANY")	
	private String company;
	
	@Column(name = "DESCRIPTION")
	private String description;
	
	@Column(name = "AVAILABLE_QUANTITY")
	private int available_quantity;
	
	@Transient
	private String quantity;
	
	@Column(name = "PRICE")
	private double price;
	
	public Item () {
		
	} 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getItemNumber() {
		return itemNumber;
	}
	public void setItemNumber(int itemNumber) {
		this.itemNumber = itemNumber;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getAvailable_quantity() {
		return available_quantity;
	}
	public void setAvailable_quantity(int available_quantity) {
		this.available_quantity = available_quantity;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public Item( String n, String c, Double p,String q) {
		setName(n);
		setCompany(c);
		setPrice(p);
		setQuantity(q);
	}
	

}
