package com.ynu.mapper;

import com.ynu.dto.Seat;

public interface SeatMapper {
    int deleteByPrimaryKey(Integer idseat);

    int insert(Seat record);

    int insertSelective(Seat record);

    Seat selectByPrimaryKey(Integer idseat);

    int updateByPrimaryKeySelective(Seat record);

    int updateByPrimaryKey(Seat record);
}