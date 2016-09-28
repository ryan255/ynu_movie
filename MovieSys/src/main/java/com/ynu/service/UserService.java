package com.ynu.service;

import java.util.Map;

import com.ynu.dto.User;

public interface UserService {
	public User find(String user_name);
	public void insertUser(User user);
	public User selectUserById(Integer idUser);
	public void updateAccount(Map<String, Integer> map);

}
