package edu.osu.cse5234.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import edu.osu.cse5234.models.Item;
import edu.osu.cse5234.models.Order;
import edu.osu.cse5234.models.PaymentInfo;
import edu.osu.cse5234.models.ShippingInfo;

@Controller
@RequestMapping("/purchase")
public class Purchase {
	
	@RequestMapping( method = RequestMethod.GET)
	public String viewOrderEntryPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Order order = new Order();
		List<Item> iList= order.getItems();
		iList.add(new Item("Hide n' Seek", "Parle", "5","0"));
		iList.add(new Item("Lays", "Lays", "10","0"));
		iList.add(new Item("Cheetos", "Lays", "15","0"));
		iList.add(new Item("GoodDay", "Parle", "20","0"));
		iList.add(new Item("Bournville", "Bournville", "25","0"));
		order.setItems(iList);
		request.setAttribute("order", order);
		return "OrderEntryForm";
	}
	
	@RequestMapping(path = "/submitItems", method = RequestMethod.POST)
	public String submitItems(@ModelAttribute("order") Order order, HttpServletRequest request) {
		System.out.println(order.getItems().get(0).getName());
		request.getSession().setAttribute("order", order);
		return "redirect:/purchase/paymentEntry";
	}
	
	@RequestMapping(path = "/paymentEntry", method = RequestMethod.GET)
	public String viewPaymentEntryForm(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("paymentInfo", new PaymentInfo());	
		return "PaymentEntryForm";
	}
	
	@RequestMapping(path = "/submitPayment", method = RequestMethod.POST)
	public String submitPayment(@ModelAttribute("paymentInfo") PaymentInfo paymentInfo, HttpServletRequest request) {
		request.getSession().setAttribute("paymentInfo", paymentInfo);
		return "redirect:/purchase/shippingEntry";
	}

	@RequestMapping(path = "/shippingEntry", method = RequestMethod.GET)
	public String viewShippingEntryForm(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("shippingInfo", new ShippingInfo());	
		return "ShippingEntryForm";
	}

	@RequestMapping(path = "/submitShipping", method = RequestMethod.POST)
	public String submitShipping(@ModelAttribute("shippingInfo") ShippingInfo shippingInfo, HttpServletRequest request) {
		request.getSession().setAttribute("shippingInfo", shippingInfo);
		return "redirect:/purchase/viewOrder";
	}	
	
	@RequestMapping(path="/viewOrder", method = RequestMethod.GET)
	String getOrderDetails() {
		return "ViewOrder";
	}
	
	@RequestMapping(path="/confirmOrder",  method = RequestMethod.GET)
	String getOrderConfirmation(HttpServletRequest request) {
		int range=9999-1111;
		
		request.setAttribute("orderId", (int)(1110+Math.random()*(range)) );
		return "Confirmation";
	}
}
