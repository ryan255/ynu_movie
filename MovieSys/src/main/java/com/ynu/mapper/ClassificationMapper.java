package com.ynu.mapper;

import com.ynu.dto.Classification;

public interface ClassificationMapper {
    int deleteByPrimaryKey(Integer idclass);

    int insert(Classification record);

    int insertSelective(Classification record);

    Classification selectByPrimaryKey(Integer idclass);

    int updateByPrimaryKeySelective(Classification record);

    int updateByPrimaryKey(Classification record);
}