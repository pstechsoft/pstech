package com.arn.pst.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import com.arn.pst.model.RegisterModel;
import com.arn.pstechbackend.dao.UserDAO;
import com.arn.pstechbackend.dto.Address;
import com.arn.pstechbackend.dto.Cart;
import com.arn.pstechbackend.dto.User;

@Component
public class RegisterHandler {

	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	 private BCryptPasswordEncoder passwordEncoder;

	public RegisterModel init() {

		return new RegisterModel();
	}

	public void addUser(RegisterModel registerModel, User user) {
		registerModel.setUser(user);
	}

	public void addBilling(RegisterModel registerModel, Address billing) {
		registerModel.setBilling(billing);
	}
	
	 public String validateUser(User user, MessageContext error) {
		  String transitionValue = "success";
		  //checking if password matches confirm password
		   if(!user.getPassword().equals(user.getConfirmPassword())) {
		    error.addMessage(new MessageBuilder().error().source(
		      "confirmPassword").defaultText("Password does not match confirm password!").build());
		    transitionValue = "failure";    
		   } 
		   //check the uniqueness of the email id
		   if(userDAO.getByEmail(user.getEmail())!=null) {
		    error.addMessage(new MessageBuilder().error().source(
		      "email").defaultText("Email address is already taken!").build());
		    transitionValue = "failure";
		   }
		  return transitionValue;
		 }

	public String saveAll(RegisterModel model) {
		String transitionValue = "success";
		User user = model.getUser();
		if (user.getRole().equals("USER")) {
			// create a new cart
			Cart cart = new Cart();
			cart.setUser(user);
			user.setCart(cart);
		}
		
		// encode the password
		  user.setPassword(passwordEncoder.encode(user.getPassword()));
		
		// save the user
		userDAO.addUser(user);
		// save the billing address
		Address billing = model.getBilling();
		billing.setUserId(user.getId());
		billing.setBilling(true);
		userDAO.addAddress(billing);
		return transitionValue;
	}
}
