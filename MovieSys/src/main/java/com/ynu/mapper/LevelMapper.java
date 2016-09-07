package com.ynu.mapper;

import com.ynu.dto.Level;

public interface LevelMapper {
    int deleteByPrimaryKey(Integer idlevel);

    int insert(Level record);

    int insertSelective(Level record);

    Level selectByPrimaryKey(Integer idlevel);

    int updateByPrimaryKeySelective(Level record);

    int updateByPrimaryKey(Level record);
}