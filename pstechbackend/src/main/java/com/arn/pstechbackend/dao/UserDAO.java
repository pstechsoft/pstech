package com.arn.pstechbackend.dao;

import java.util.List;

import com.arn.pstechbackend.dto.Address;
import com.arn.pstechbackend.dto.Cart;
import com.arn.pstechbackend.dto.User;

public interface UserDAO {
	
	//add an user
	boolean addUser(User user);
	User getByEmail(String email);
	//add an address
	boolean addAddress(Address address);
	
	Address getBillingAddress(int userId);
	List<Address> listShippingAddresses(int userId);
	
	//Alternative when add many to one relation in Address.java
	//Address getBillingAddress(User user);
	//List<Address> listShippingAddresses(User user);
	
	//update a cart
	boolean updateCart(Cart cart);

}
