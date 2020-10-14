package com.arn.pstechbackend.dao;

import java.util.List;

import com.arn.pstechbackend.dto.OrderDetail;

public interface OrderDetailDAO {
	
	public List<OrderDetail> list();
	public OrderDetail get(int id);
}
