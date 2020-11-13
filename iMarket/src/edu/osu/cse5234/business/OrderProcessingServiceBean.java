package edu.osu.cse5234.business;

import java.util.Date;
import java.util.List;


import javax.annotation.Resource;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.jms.ConnectionFactory;
import javax.jms.JMSConnectionFactory;
import javax.jms.JMSContext;
import javax.jms.Queue;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import edu.osu.cse5234.business.view.Item;
import edu.osu.cse5234.models.LineItem;
import edu.osu.cse5234.models.Order;
import edu.osu.cse5234.util.ServiceLocator;

/**
 * Session Bean implementation class OrderProcessingServiceBean
 */
@Stateless
@LocalBean
@Resource(name="jms/emailQCF", lookup="jms/emailQCF", type=ConnectionFactory.class) 
public class OrderProcessingServiceBean {

    /**
     * Default constructor. 
     */
	
	@Inject
	@JMSConnectionFactory("java:comp/env/jms/emailQCF")
	private JMSContext jmsContext;

	@Resource(lookup="jms/emailQ")
	private Queue queue;

	
	@PersistenceContext
	EntityManager entityManager;
	
	public EntityManager getEntityManager() {
		return entityManager;
	}

	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}
	
    public OrderProcessingServiceBean() {
        // TODO Auto-generated constructor stub
    }
    public String processOrder(Order order) {
    	
//    	if(ServiceLocator.getInventoryService().validateQuantity(order.getItems()))
//    	{
//    		ServiceLocator.getInventoryService().updateInventory(order.getItems());
//    		
//    	}
    	int range=9999-1111;

    	
    	
    	if (validateItemAvailability(order)) {
    		entityManager.persist(order);
    		entityManager.flush();
    		notifyUser(order);
    		
        	int conf=(int)(1110+Math.random()*(range));
        	System.out.println(conf+"  ***************\n");
    		return ""+conf;
    	}
    	
    	return "";
    }
    
    public boolean validateItemAvailability(Order order) {
    		
    	// return ServiceLocator.getInventoryService().validateQuantity(order.getItems());
    	List<Item> items = ServiceLocator.getInventoryService().getAvailableInventory().getItems();
    	for(int i = 0; i< order.getLineItems().size(); i++) {
    		LineItem x = order.getLineItems().get(i);
    		for(Item y: items) {
    			if(x.getItem_number() == y.getItemNumber()) {
    				if(x.getQuantity() > y.getAvailable_quantity())
    					return false;
    				else {
    					//y.setAvailable_quantity(y.getAvailable_quantity()-x.getQuantity());
    					break;
    				}
    					
    			}    				
    		}
    	}
    	
    	
    	return true;
    }
    
    
    private void notifyUser(Order o) {

    	String message = o.getCustomer_email() + ":" +
    	       "Your order was successfully submitted. " + 
    	     	"You will hear from us when items are shipped. " + new Date();

    	System.out.println("Sending message: " + message);
    	jmsContext.createProducer().send(queue, message);
    	System.out.println("Message Sent!");
    	}

    

}
