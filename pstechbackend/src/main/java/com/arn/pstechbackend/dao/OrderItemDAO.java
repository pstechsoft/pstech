package com.arn.pstechbackend.dao;

import java.util.List;

import com.arn.pstechbackend.dto.OrderItem;

public interface OrderItemDAO {
	
	public List<OrderItem> list();
	public List<OrderItem> list(int userId);
	public OrderItem get(int id);
	
}
