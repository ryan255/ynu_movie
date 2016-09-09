package com.ynu.mapper;

import com.ynu.dto.OrderSeat;

public interface OrderSeatMapper {
    int deleteByPrimaryKey(Integer idorderseat);

    int insert(OrderSeat record);

    int insertSelective(OrderSeat record);

    OrderSeat selectByPrimaryKey(Integer idorderseat);

    int updateByPrimaryKeySelective(OrderSeat record);

    int updateByPrimaryKey(OrderSeat record);
}