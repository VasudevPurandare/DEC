package edu.osu.cse5234.models;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import java.util.ArrayList;

@Entity
@Table(name="CUSTOMER_ORDER")
public class Order {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	
	@Column(name = "CUSTOMER_NAME")
	String customer_name;
	
	@Column(name="CUSTOMER_EMAIL")
	String customer_email;
	
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name="CUSTOMER_ORDER_ID_FK")
	private List<LineItem> lineItems;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="PAYMENT_INFO_ID_FK")
	PaymentInfo paymentInfo;

	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="SHIPPING_INFO_ID_FK")
	ShippingInfo shippingInfo;
	
	public PaymentInfo getPaymentInfo() {
		return paymentInfo;
	}


	public void setPaymentInfo(PaymentInfo paymentInfo) {
		this.paymentInfo = paymentInfo;
	}


	public ShippingInfo getShippingInfo() {
		return shippingInfo;
	}


	public void setShippingInfo(ShippingInfo shippingInfo) {
		this.shippingInfo = shippingInfo;
	}


	public Order() {
		setLineItems(new ArrayList<LineItem>());
	}
	
	
	public int getId() {
		return id;
	}
	
	
	public void setId(int id) {
		this.id = id;
	}
	
	
	public String getCustomer_name() {
		return customer_name;
	}
	
	
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	
	
	public String getCustomer_email() {
		return customer_email;
	}
	
	
	public void setCustomer_email(String customer_email) {
		this.customer_email = customer_email;
	}


	public List<LineItem> getLineItems() {
		return lineItems;
	}


	public void setLineItems(List<LineItem> lineItems) {
		this.lineItems = lineItems;
	}
	
	
	
}


