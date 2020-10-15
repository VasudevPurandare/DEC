package edu.osu.cse5234.business;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import edu.osu.cse5234.models.Order;
import edu.osu.cse5234.util.ServiceLocator;

/**
 * Session Bean implementation class OrderProcessingServiceBean
 */
@Stateless
@LocalBean
public class OrderProcessingServiceBean {

    /**
     * Default constructor. 
     */
    public OrderProcessingServiceBean() {
        // TODO Auto-generated constructor stub
    }
    public String processOrder(Order order) {
    	
    	if(ServiceLocator.getInventoryService().validateQuantity(order.getItems()))
    	{
    		ServiceLocator.getInventoryService().updateInventory(order.getItems());
    		
    	}
    	int range=9999-1111;
    	int conf=(int)(1110+Math.random()*(range));
    	System.out.println(conf+"  ***************\n");
    	return ""+conf;
    }
    
    public boolean validateItemAvailability(Order order) {
    		
    	return ServiceLocator.getInventoryService().validateQuantity(order.getItems());
    }
    

}