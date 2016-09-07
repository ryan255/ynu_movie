package com.ynu.mapper;

import com.ynu.dto.order;

public interface orderMapper {
    int deleteByPrimaryKey(Integer idorder);

    int insert(order record);

    int insertSelective(order record);

    order selectByPrimaryKey(Integer idorder);

    int updateByPrimaryKeySelective(order record);

    int updateByPrimaryKey(order record);
}