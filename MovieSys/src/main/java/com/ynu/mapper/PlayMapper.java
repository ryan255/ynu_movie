package com.ynu.mapper;

import com.ynu.dto.Play;

public interface PlayMapper {
    int deleteByPrimaryKey(Integer idplay);

    int insert(Play record);

    int insertSelective(Play record);

    Play selectByPrimaryKey(Integer idplay);

    int updateByPrimaryKeySelective(Play record);

    int updateByPrimaryKey(Play record);
}