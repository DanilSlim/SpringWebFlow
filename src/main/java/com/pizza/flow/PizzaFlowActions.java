package com.pizza.flow;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.pizza.domain.CashOrCheckPayment;
import com.pizza.domain.CreditCardPayment;
import com.pizza.domain.Customer;
import com.pizza.domain.Order;
import com.pizza.domain.Payment;
import com.pizza.domain.PaymentDetails;
import com.pizza.domain.PaymentType;
import com.pizza.service.CustomerNotFoundException;
import com.pizza.service.CustomerService;

@Component
public class PizzaFlowActions {
	
	 @Autowired
	 private CustomerService customerService;
	
	 public Customer lookupCustomer(String phoneNumber) throws CustomerNotFoundException {     
		 
	      Customer customer = customerService.lookupCustomer(phoneNumber);
	      
	      if(customer != null) {        
	        return customer;
	      } 
	      else 
	      	{
	        throw new CustomerNotFoundException();
	      }
	   }
	 
	 public boolean checkDeliveryArea(String zipCode) {
	     
	     return "75075".equals(zipCode);
	   }
	 
	 public void addCustomer(Customer customer) {
	      System.out.println("TODO: Flesh out the addCustomer() method.");
	   }
	 
	 public Payment verifyPayment(PaymentDetails paymentDetails) {
	     Payment payment = null;
	     if(paymentDetails.getPaymentType() == PaymentType.CREDIT_CARD) {
	       payment = new CreditCardPayment();
	     } else {
	       payment = new CashOrCheckPayment();
	     }
	     
	     return payment;
	   }
	 
	 public void saveOrder(Order order) {
		 System.out.println("TODO: Flesh out the saveOrder() method.");
	   }

}
