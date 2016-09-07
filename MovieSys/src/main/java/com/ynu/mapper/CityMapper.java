package com.ynu.mapper;

import com.ynu.dto.City;

public interface CityMapper {
    int deleteByPrimaryKey(Integer idcity);

    int insert(City record);

    int insertSelective(City record);

    City selectByPrimaryKey(Integer idcity);

    int updateByPrimaryKeySelective(City record);

    int updateByPrimaryKey(City record);
}