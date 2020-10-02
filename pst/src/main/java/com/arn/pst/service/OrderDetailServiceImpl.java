package com.arn.pst.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.arn.pstechbackend.dao.OrderDetailDAO;
import com.arn.pstechbackend.dto.OrderDetail;

@Service
public class OrderDetailServiceImpl implements OrderDetailService {

	@Autowired
	private OrderDetailDAO orderDetailDAO;
	
	@Override
	@Transactional
	public List<OrderDetail> listOrderDetails() {
		return orderDetailDAO.listOrderDetails();
	}

	@Override
	@Transactional
	public OrderDetail get(int id) {
		return orderDetailDAO.get(id);
	}
}
