package com.ynu.mapper;

import com.ynu.dto.Auditorium;

public interface AuditoriumMapper {
    int deleteByPrimaryKey(Integer idauditorium);

    int insert(Auditorium record);

    int insertSelective(Auditorium record);

    Auditorium selectByPrimaryKey(Integer idauditorium);

    int updateByPrimaryKeySelective(Auditorium record);

    int updateByPrimaryKey(Auditorium record);
}