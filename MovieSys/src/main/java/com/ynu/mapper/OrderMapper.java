package com.ynu.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ynu.dto.Order;
import com.ynu.dto.OrderSeat;
import com.ynu.dto.Seat;

@Repository("OrderMapper")
public interface OrderMapper {
	public void insertOrder(Order order);
	public Order selectOrderLast();
	public Seat selectSeatId(Seat seat);
	public void insertOrderSeat(OrderSeat orderSeat);
}
