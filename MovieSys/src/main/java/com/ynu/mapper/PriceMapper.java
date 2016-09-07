package com.ynu.mapper;

import com.ynu.dto.Price;

public interface PriceMapper {
    int deleteByPrimaryKey(Integer idprice);

    int insert(Price record);

    int insertSelective(Price record);

    Price selectByPrimaryKey(Integer idprice);

    int updateByPrimaryKeySelective(Price record);

    int updateByPrimaryKey(Price record);
}