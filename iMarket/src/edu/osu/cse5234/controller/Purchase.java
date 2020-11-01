package edu.osu.cse5234.controller;
import java.util.ArrayList;
import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import edu.osu.cse5234.business.view.Inventory;
import edu.osu.cse5234.business.view.Item;
import edu.osu.cse5234.models.LineItem;
import edu.osu.cse5234.models.Order;
import edu.osu.cse5234.models.PaymentInfo;
import edu.osu.cse5234.models.ShippingInfo;
import edu.osu.cse5234.util.ServiceLocator;

@Controller
@RequestMapping("/purchase")
public class Purchase {
	/*
	List<Item> getStorageQuantity(){
		List<Item> itemStore = new ArrayList<Item>();
		itemStore.add(new Item("Hide n' Seek", "Parle", "5","10"));
		itemStore.add(new Item("Lays", "Lays", "10","20"));
		itemStore.add(new Item("Cheetos", "Lays", "15","15"));
		itemStore.add(new Item("Jim Jam", "Parle", "20","20"));
		itemStore.add(new Item("Bournville", "Bournville", "25","30"));
		return itemStore;
		
	}*/
	
	@RequestMapping(method = RequestMethod.GET)
	public String viewOrderEntryPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		/*
		if(request.getSession().getAttribute("stock")==null) {
			Order stock = new Order();
			List<Item> iList=getStorageQuantity();
			stock.setItems(getStorageQuantity());
			request.getSession().setAttribute("stock", stock);
		}*/
		
		
		Inventory inventory = ServiceLocator.getInventoryService().getAvailableInventory();
		request.setAttribute("inventory", inventory);
		
		Order order = new Order();
		List<LineItem> custList= new ArrayList<LineItem>();
		for (int i=0; i< inventory.getItems().size();i++) {
			custList.add(new LineItem());
		}
		order.setLineItems(custList);
		request.setAttribute("order", order);
		
		return "OrderEntryForm";
	}
	
	/*@RequestMapping(path="/isAvailable", method=RequestMethod.POST)
	@ResponseBody
	public  String isAvailable(@RequestParam(value="id")int id, @RequestParam(value="cust_q")int cust_q, HttpServletRequest request) {
		List<Item> storeItems= ((Order) request.getSession().getAttribute("stock")).getItems();
		int avail=Integer.parseInt(storeItems.get(id).getQuantity());
		if(avail!=0 && avail>= cust_q ) {
			 return "true";
		}
		else {
			 return storeItems.get(id).getQuantity();
		}
		
	}*/
	
	@RequestMapping(path = "/submitItems", method = RequestMethod.POST)
	public ModelAndView submitItems(@ModelAttribute("order") Order order, HttpServletRequest request) {
		
		boolean isValid=ServiceLocator.getOrderProcessingService().validateItemAvailability(order);
		if(isValid) {
			request.getSession().setAttribute("order", order);
			
			return new ModelAndView("redirect:/purchase/paymentEntry");
		}
		else {
			ModelMap mp= new ModelMap("message", "Quantity Not Available. Please Resubmit item quantities");
			request.setAttribute("order", order);
			Inventory inventory = ServiceLocator.getInventoryService().getAvailableInventory();
			request.setAttribute("inventory", inventory);
			return new ModelAndView("OrderEntryForm", mp);
		}
	}
	
	@RequestMapping(path = "/paymentEntry", method = RequestMethod.GET)
	public String viewPaymentEntryForm(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("paymentInfo", new PaymentInfo());	
		return "PaymentEntryForm";
	}
	
	@RequestMapping(path = "/submitPayment", method = RequestMethod.POST)
	public String submitPayment(@ModelAttribute("paymentInfo") PaymentInfo paymentInfo, HttpServletRequest request) {
		
		Order order= (Order)request.getSession().getAttribute("order");
		order.setPaymentInfo(paymentInfo);
		
		return "redirect:/purchase/shippingEntry";
	}

	@RequestMapping(path = "/shippingEntry", method = RequestMethod.GET)
	public String viewShippingEntryForm(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("shippingInfo", new ShippingInfo());	
		return "ShippingEntryForm";
	}

	@RequestMapping(path = "/submitShipping", method = RequestMethod.POST)
	public String submitShipping(@ModelAttribute("shippingInfo") ShippingInfo shippingInfo, HttpServletRequest request) {
		
		Order order= (Order)request.getSession().getAttribute("order");
		order.setShippingInfo(shippingInfo);
		
		return "redirect:/purchase/viewOrder";
	}	
	
	@RequestMapping(path="/viewOrder", method = RequestMethod.GET)
	String getOrderDetails() {
		return "ViewOrder";
	}
	
	@RequestMapping(path="/confirmOrder",  method = RequestMethod.GET)
	String getOrderConfirmation(HttpServletRequest request) {
		
		Order order =(Order) request.getSession().getAttribute("order");
		String confnum=ServiceLocator.getOrderProcessingService().processOrder(order);
		request.getSession().setAttribute("orderId",  confnum);
		
		return "Confirmation";
	}
}
