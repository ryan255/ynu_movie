package com.ynu.mapper;

import com.ynu.dto.Studio;

public interface StudioMapper {
    int deleteByPrimaryKey(Integer idstudio);

    int insert(Studio record);

    int insertSelective(Studio record);

    Studio selectByPrimaryKey(Integer idstudio);

    int updateByPrimaryKeySelective(Studio record);

    int updateByPrimaryKey(Studio record);
}