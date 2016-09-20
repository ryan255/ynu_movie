package com.ynu.mapper;

import com.ynu.dto.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer iduser);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer iduser);
    
    User find(String userName);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}