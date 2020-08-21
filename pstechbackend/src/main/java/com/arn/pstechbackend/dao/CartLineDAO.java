package com.arn.pstechbackend.dao;

import java.util.List;

import com.arn.pstechbackend.dto.Cart;
import com.arn.pstechbackend.dto.CartLine;
/*import com.arn.pstechbackend.dto.OrderDetail;*/
import com.arn.pstechbackend.dto.OrderDetail;

public interface CartLineDAO {

	public List<CartLine> list(int cartId);
	public CartLine get(int id);	
	public boolean add(CartLine cartLine);
	public boolean update(CartLine cartLine);
	public boolean delete(CartLine cartLine);
	
	// fetch the CartLine based on cartId and productId
	public CartLine getByCartAndProduct(int cartId, int productId);		
		
	// updating the cart
	boolean updateCart(Cart cart);
	
	// list of available cartLine
	public List<CartLine> listAvailable(int cartId);
	
	// adding order details
	boolean addOrderDetail(OrderDetail orderDetail);

	
}
