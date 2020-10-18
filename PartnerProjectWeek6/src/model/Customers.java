package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Customers")
public class Customers {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="Customer_ID")
	private int id;
	@Column(name="CUSTOMER_NAME")
	private String customerName;
	
	public Customers() {
		super();
	}

	public Customers(int id, String customerName) {
		super();
		this.id = id;
		this.customerName = customerName;
	}

	public Customers(String customerName) {
		super();
		this.customerName = customerName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	@Override
	public String toString() {
		return "Customer Name: " + customerName;
	}
}
