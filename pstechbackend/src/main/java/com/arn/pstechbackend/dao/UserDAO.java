package com.arn.pstechbackend.dao;

import java.util.List;

import com.arn.pstechbackend.dto.Address;
import com.arn.pstechbackend.dto.Product;
import com.arn.pstechbackend.dto.User;

public interface UserDAO {
	
	//add an user
	User get(int id);
	boolean addUser(User user);
	User getByEmail(String email);
	//add an address
	boolean addAddress(Address address);
	
	Address getAddress(int addressId);
	public void deleteAddress(int addressId);
	Address getBillingAddress(int userId);
	List<Address> listShippingAddresses(int userId);
	boolean updateAddress(Address address);
	/*boolean deleteAddress(Address address);*/
	
	//Alternative when add many to one relation in Address.java
	//Address getBillingAddress(User user);
	//List<Address> listShippingAddresses(User user);
	
}
