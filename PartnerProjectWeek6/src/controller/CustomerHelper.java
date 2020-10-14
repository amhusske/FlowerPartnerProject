package controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import model.Customers;



public class CustomerHelper {

	static EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("PartnerProjectWeek6");
	
	public void insertCustomer(Customers c) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(c);
		em.getTransaction().commit();
		em.close();
	}
	
	public List<Customers> showAllCustomers() {
		EntityManager em = emfactory.createEntityManager();
		List<Customers> allCustomers = em.createQuery("SELECT c FROM Customers c").getResultList();
		return allCustomers;
	}
	
	public Customers findCustomer(String nameToLookUp) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		
		TypedQuery<Customers> typedQuery = em.createQuery("SELECT ch from Customers ch where ch.customerName = :selectedCustomerName", Customers.class);
		
		typedQuery.setParameter("selectedCustomerName", nameToLookUp);
		Customers foundCustomer;
		
		try {
			foundCustomer = typedQuery.getSingleResult();
		}catch (NoResultException ex) {
			foundCustomer = new Customers(nameToLookUp);
		}
		em.close();
		
		return foundCustomer;
	}

}