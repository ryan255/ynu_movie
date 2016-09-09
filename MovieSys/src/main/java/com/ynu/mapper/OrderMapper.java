package com.ynu.mapper;

import com.ynu.dto.Order;

public interface OrderMapper {
    int deleteByPrimaryKey(Integer idorder);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer idorder);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);
}