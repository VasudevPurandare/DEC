package edu.osu.cse5234.models;

public class Item {
	
	private String name;
	 private String company;
	 private String quantity;
	 private String price;
	
	public Item () {
		
	} 
	public Item( String n, String c, String p,String q) {
		setName(n);
		setCompany(c);
		setPrice(p);
		setQuantity(q);
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
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
}
