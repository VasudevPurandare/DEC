package edu.osu.cse5234.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name ="CUSTOMER_ORDER_LINE_ITEM")
public class LineItem {
	
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
int id;

@Column(name="ITEM_ID")
int item_number;

@Column(name="ITEM_NAME")
String name;

@Transient
double price;


@Transient
String  company;


@Column(name="QUANTITY")
int quantity;



public int getItem_number() {
	return item_number;
}

public void setItem_number(int item_number) {
	this.item_number = item_number;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
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


public String getCompany() {
	return company;
}

public void setCompany(String company) {
	this.company = company;
}

}
