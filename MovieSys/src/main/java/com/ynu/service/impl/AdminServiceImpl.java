package com.ynu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ynu.dto.Admin;
import com.ynu.mapper.AdminMapper;
import com.ynu.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminMapper adminMapper;

	public Admin find(String admin_name) {

		return adminMapper.findAdmin(admin_name);
	}

	public void insertAdmin(Admin admin) {
		adminMapper.insertAdmin(admin);
	}
	

}
