package com.ynu.mapper;

import com.ynu.dto.Edition;

public interface EditionMapper {
    int deleteByPrimaryKey(Integer idedition);

    int insert(Edition record);

    int insertSelective(Edition record);

    Edition selectByPrimaryKey(Integer idedition);

    int updateByPrimaryKeySelective(Edition record);

    int updateByPrimaryKey(Edition record);
}