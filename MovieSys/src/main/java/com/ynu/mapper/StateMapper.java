package com.ynu.mapper;

import com.ynu.dto.State;

public interface StateMapper {
    int deleteByPrimaryKey(Integer idstate);

    int insert(State record);

    int insertSelective(State record);

    State selectByPrimaryKey(Integer idstate);

    int updateByPrimaryKeySelective(State record);

    int updateByPrimaryKey(State record);
}