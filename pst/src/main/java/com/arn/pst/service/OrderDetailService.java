package com.arn.pst.service;

import java.util.List;

import com.arn.pstechbackend.dto.OrderDetail;

public interface OrderDetailService {
	public List<OrderDetail> listOrderDetails();
	public OrderDetail get(int id);
}
