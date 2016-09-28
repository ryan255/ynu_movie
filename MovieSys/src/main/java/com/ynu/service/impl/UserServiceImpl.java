package com.ynu.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ynu.dto.User;
import com.ynu.mapper.UserMapper;
import com.ynu.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserMapper userMapper;

	public User find(String user_name) {
		return userMapper.findUser(user_name);
	}

	public void insertUser(User user) {
		userMapper.insertUser(user);
	}

	

	public User selectUserById(Integer idUser) {
		// TODO Auto-generated method stub
		return userMapper.selectUserById(idUser);
	}

	

	public void updateAccount(Map<String, Integer> map) {
		// TODO Auto-generated method stub
		userMapper.updateAccount(map);
	}



	
}
