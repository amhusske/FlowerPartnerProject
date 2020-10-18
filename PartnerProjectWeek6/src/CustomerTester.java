import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import controller.OrderHelper;
import model.Customers;
import model.Flower;
import model.Order;

public class CustomerTester {

	public static void main(String[] args) {
		
		Customers testCustomer = new Customers("testCustomer");
		
		OrderHelper oh = new OrderHelper();
		
		Flower rose = new Flower("Rose", "Red");
		Flower daisy = new Flower("Daisy", "Yellow");
		
		List<Flower> testOrder = new ArrayList<Flower>();
		
		testOrder.add(rose);
		testOrder.add(daisy);
		
		Order testOrderList = new Order("Test Order", LocalDate.now(), 12, 2.99, testCustomer);
		
		testOrderList.setListOfFlowers(testOrder);
		
		oh.insertOrder(testOrderList);
		
		List<Order> allOrders = oh.showAllOrders();
		for(Order a: allOrders) {
			System.out.println(a.toString());
		}
	}
}

