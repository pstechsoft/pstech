package com.arn.pstechbackend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.arn.pstechbackend.dao.OrderItemDAO;
import com.arn.pstechbackend.dto.OrderItem;

@Repository("orderItemDAO")
@Transactional
public class OrderItemDAOImpl implements OrderItemDAO {

	@Autowired
	private SessionFactory sessionFactory;

	
	@Override
	public List<OrderItem> list(int userId) {
		return sessionFactory.getCurrentSession()
				.createQuery("FROM OrderItem WHERE user.id = :userId", OrderItem.class)
					.setParameter("userId", userId)
						.getResultList();
	}
	
	@Override
	public OrderItem get(int id) {

		return sessionFactory.getCurrentSession().get(OrderItem.class, Integer.valueOf(id));
	}

	public List<OrderItem> list() {
		return sessionFactory.getCurrentSession()
				.createQuery("FROM OrderItem ", OrderItem.class)
						.getResultList();
	}

}
