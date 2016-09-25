package com.ynu.service;

import com.ynu.dto.Admin;

public interface AdminService {
	public Admin find(String admin_name);
	public void insertAdmin(Admin admin);

}
