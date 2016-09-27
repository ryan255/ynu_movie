package com.ynu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ynu.dto.Order;
import com.ynu.dto.OrderSeat;
import com.ynu.dto.Seat;
import com.ynu.mapper.OrderMapper;
import com.ynu.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapper orderMapper;
	
	public void insertOrder(Order order) {
		// TODO Auto-generated method stub
		orderMapper.insertOrder(order);
	}
	public Seat selectSeatId(Seat seat) {
		// TODO Auto-generated method stub
		return orderMapper.selectSeatId(seat);
	}
	public Order selectOrderLast() {
		// TODO Auto-generated method stub
		return orderMapper.selectOrderLast();
	}
	public void insertOrderSeat(OrderSeat orderSeat) {
		// TODO Auto-generated method stub
		orderMapper.insertOrderSeat(orderSeat);
		
	}
	
	

}
