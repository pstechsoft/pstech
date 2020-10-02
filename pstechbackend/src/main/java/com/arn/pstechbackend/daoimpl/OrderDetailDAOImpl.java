package com.arn.pstechbackend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.arn.pstechbackend.dao.OrderDetailDAO;
import com.arn.pstechbackend.dto.OrderDetail;

@Repository("orderDetailDAO")
@Transactional
public class OrderDetailDAOImpl implements OrderDetailDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<OrderDetail> listOrderDetails() {
		return sessionFactory.getCurrentSession().createQuery("FROM OrderDetail" , OrderDetail.class).getResultList();
	}

	@Override
	public OrderDetail get(int id) {
		return sessionFactory.getCurrentSession().get(OrderDetail.class,Integer.valueOf(id));	
	}
}
