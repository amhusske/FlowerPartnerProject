package controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Customers;
import model.Flower;
import model.Order;

/**
 * Servlet implementation class AddOrderServlet
 */
@WebServlet("/addOrderServlet")
public class AddOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddOrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		FlowerHelper fh = new FlowerHelper();
		String orderName = request.getParameter("orderName");
		System.out.println("Order Name: " + orderName);
		
		String customerName = request.getParameter("custName");
		Double price = Double.parseDouble(request.getParameter("price"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		
		LocalDate ld = LocalDate.now();
		
		String[] selectedFlowers = request.getParameterValues("allFlowersToAdd");
		List<Flower> selectedFlowersInOrder = new ArrayList<Flower>();
		
		for(int i =0; i < selectedFlowers.length; i++) {
			System.out.println(selectedFlowers[i]);
			Flower f = fh.searchForFlowerById(Integer.parseInt(selectedFlowers[i]));		
			
			selectedFlowersInOrder.add(f);
		}

		Customers customer = new Customers(customerName);
		Order newOrder = new Order(orderName, ld, quantity, price, customer);
		newOrder.setListOfFlowers(selectedFlowersInOrder);
		OrderHelper oh = new OrderHelper();
		
		oh.insertOrder(newOrder);
		
		
		System.out.println("Sucess");
		
		getServletContext().getRequestDispatcher("/index.html").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
