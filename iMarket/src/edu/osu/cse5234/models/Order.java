package edu.osu.cse5234.models;
import java.util.List;

import edu.osu.cse5234.business.view.Item;

import java.util.ArrayList;

public class Order {
	private List<Item> items;
	
public Order() {
	setItems(new ArrayList<Item>());
}

public List<Item> getItems() {
	return items;
}

public void setItems(List<Item> items) {
	this.items = items;
}



}
