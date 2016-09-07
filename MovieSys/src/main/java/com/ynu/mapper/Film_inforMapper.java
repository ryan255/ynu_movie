package com.ynu.mapper;

import com.ynu.dto.Film_infor;

public interface Film_inforMapper {
    int deleteByPrimaryKey(Integer idfilm);

    int insert(Film_infor record);

    int insertSelective(Film_infor record);

    Film_infor selectByPrimaryKey(Integer idfilm);

    int updateByPrimaryKeySelective(Film_infor record);

    int updateByPrimaryKey(Film_infor record);
}