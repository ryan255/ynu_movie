package com.ynu.mapper;

import java.util.Map;

import com.ynu.dto.User;

public interface UserMapper {
	public User findUser(String user_name);
	public User selectUserById(Integer idUser);
	public void insertUser(User user);
	public void updateAccount(Map<String, Integer> map);

}
