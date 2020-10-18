package model;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Orders")
public class Order {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ORDER_ID")
	private int orderID;
	
	@Column(name="ORDER_NAME")
	private String orderName;
	
	@Column(name="ORDER_DATE")
	private LocalDate orderDate;
	
	@Column(name="QUANTITY")
	private int quantity;
	
	@Column(name="PRICE")
	private double price;
	
	@ManyToOne(cascade=CascadeType.PERSIST)
	@JoinColumn(name="Customer_ID")
	private Customers customer;
	
	@OneToMany(cascade=CascadeType.PERSIST, fetch=FetchType.EAGER)
	@JoinTable
		(name="Flowers_On_Order",
		joinColumns= { @JoinColumn(name="ORDER_ID", referencedColumnName="ORDER_ID")},
		inverseJoinColumns= { @JoinColumn(name="FLOWER_ID", referencedColumnName="ID", unique=true)})
	private List<Flower> listOfFlowers;
	
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Order(String orderName, LocalDate orderDate, int quantity, double price, Customers customer, List<Flower> listOfFlowers) {
		super();
		this.orderName = orderName;
		this.orderDate = orderDate;
		this.quantity = quantity;
		this.price = price;
		this.customer = customer;
		this.listOfFlowers = listOfFlowers;
	}

	public Order(int orderID, String orderName, LocalDate orderDate, int quantity, double price, Customers customer, List<Flower> listOfFlowers) {
		super();
		this.orderID = orderID;
		this.orderName = orderName;
		this.orderDate = orderDate;
		this.quantity = quantity;
		this.price = price;
		this.customer = customer;
		this.listOfFlowers = listOfFlowers;
	}

	public Order(String orderName, LocalDate orderDate, int quantity, double price, Customers customer) {
		this.orderName = orderName;
		this.orderDate = orderDate;
		this.customer = customer;
		this.quantity = quantity;
		this.price = price;
	}

	public int getOrderID() {
		return orderID;
	}

	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}
	
	public String getOrderName() {
		return orderName;
	}

	public void setOrderName(String orderName) {
		this.orderName = orderName;
	}

	public LocalDate getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(LocalDate orderDate) {
		this.orderDate = orderDate;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Customers getCustomer() {
		return customer;
	}

	public void setCustomer(Customers customer) {
		this.customer = customer;
	}

	public List<Flower> getListOfFlowers() {
		return listOfFlowers;
	}

	public void setListOfFlowers(List<Flower> listOfFlowers) {
		this.listOfFlowers = listOfFlowers;
	}
	
}
