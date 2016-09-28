package com.ynu.service;

import com.ynu.dto.Order;
import com.ynu.dto.OrderSeat;
import com.ynu.dto.Seat;

public interface OrderService {
	public void insertOrder(Order order);
	public Seat selectSeatId(Seat seat);
	public Order selectOrderLast();
	public void insertOrderSeat(OrderSeat orderSeat);
	public void updateOrderState(Integer idOrder);


}
