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
 * Servlet implementation class EditOrderServlet
 */
@WebServlet("/editOrderServlet")
public class EditOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditOrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		OrderHelper oh = new OrderHelper();
		FlowerHelper fh = new FlowerHelper();
		CustomerHelper ch = new CustomerHelper();
		
		Integer paramId = Integer.parseInt(request.getParameter("id"));
		Order orderToUpdate = oh.searchForOrderById(paramId);
		
		String customerName = request.getParameter("customerName");
		String newOrderName = request.getParameter("orderName");
		Double price = Double.parseDouble(request.getParameter("price"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		Customers newCustomer = new Customers(customerName);
		
		LocalDate ld = LocalDate.now();
				
		try {
			//Flowers selected 
			String[] selectedFlowers = request.getParameterValues("allFlowersToAdd");
			List<Flower>selectedFlowersOnOrder = new ArrayList<Flower>();
			
				for(int i = 0; i < selectedFlowers.length; i++) {
					System.out.println(selectedFlowers[i]);
					Flower f = fh.searchForFlowerById(Integer.parseInt(selectedFlowers[i]));
					selectedFlowersOnOrder.add(f);
				}
			
			orderToUpdate.setListOfFlowers(selectedFlowersOnOrder);
			}catch(NullPointerException ex) {
			// set flower list to empty - none selected
			List<Flower> selectedFlowersOnOrder = new ArrayList<Flower>();
			orderToUpdate.setListOfFlowers(selectedFlowersOnOrder);
			}
		
			orderToUpdate.setOrderName(newOrderName);
			orderToUpdate.setOrderDate(ld);
			orderToUpdate.setCustomer(newCustomer);
			orderToUpdate.setPrice(price);
			orderToUpdate.setQuantity(quantity);
			oh.updateItem(orderToUpdate);
			
			getServletContext().getRequestDispatcher("/viewAllOrdersServlet").forward(request, response);
	}

}
