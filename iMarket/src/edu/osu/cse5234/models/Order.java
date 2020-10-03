package edu.osu.cse5234.models;

import java.util.ArrayList;

public class Order {
	private ArrayList<Item> items;
	
public Order() {
	setItems(new ArrayList<Item>());
}

public ArrayList<Item> getItems() {
	return items;
}

public void setItems(ArrayList<Item> items) {
	this.items = items;
}

}
