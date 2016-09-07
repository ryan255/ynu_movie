package com.ynu.mapper;

import com.ynu.dto.Admin;

public interface AdminMapper {
    int deleteByPrimaryKey(Integer idadmin);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer idadmin);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
}