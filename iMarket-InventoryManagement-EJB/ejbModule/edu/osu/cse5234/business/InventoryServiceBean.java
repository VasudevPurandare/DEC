package edu.osu.cse5234.business;

import edu.osu.cse5234.business.view.Inventory;
import edu.osu.cse5234.business.view.InventoryService;
import edu.osu.cse5234.business.view.Item;

import java.util.ArrayList;
import java.util.List;

import javax.ejb.Stateless;

/**
 * Session Bean implementation class InventoryServiceBean
 */
@Stateless
public class InventoryServiceBean implements InventoryService {

    /**
     * Default constructor. 
     */
    public InventoryServiceBean() {
        // TODO Auto-generated constructor stub
    }

	@Override
	public Inventory getAvailableInventory() {
		// TODO Auto-generated method stub
		
		List<Item> itemStore = new ArrayList<Item>();
		itemStore.add(new Item("Hide n' Seek", "Parle", "5","0"));
		itemStore.add(new Item("Lays", "Lays", "10","0"));
		itemStore.add(new Item("Cheetos", "Lays", "15","0"));
		itemStore.add(new Item("Jim Jam", "Parle", "20","0"));
		itemStore.add(new Item("Bournville", "Bournville", "25","0"));
		Inventory inventory = new Inventory();
		inventory.setItems(itemStore);
		
		return inventory;
	}

	@Override
	public boolean validateQuantity(List<Item> items) {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean updateInventory(List<Item> items) {
		// TODO Auto-generated method stub
		return true;
	}

}
