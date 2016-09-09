package com.ynu.service.impl;

import com.ynu.dto.Admin;
import com.ynu.mapper.AdminMapper;
import com.ynu.service.AdminService;

public class AdminServiceImpl implements AdminService{
	
	private AdminMapper adminMapper;

	public Admin find(Integer idadmin) {
		// TODO Auto-generated method stub
		return adminMapper.selectByPrimaryKey(idadmin);
	}

	public void add(Admin admin) {
		// TODO Auto-generated method stub
		
	}

	public void delete(Admin admin) {
		// TODO Auto-generated method stub
		
	}

	public void update(Admin admin) {
		// TODO Auto-generated method stub
		
	}

	public void testTransaction(Admin admin1, Admin admin2) {
		// TODO Auto-generated method stub
		
	}

	public boolean select(Integer idadmin) {
		// TODO Auto-generated method stub
		if(adminMapper.selectByPrimaryKey(idadmin)!=null){
			return true;
		}else{
			return false;	
		}
		
	}
}
