package com.ynu.service;

import com.ynu.dto.Admin;

public interface AdminService {
	boolean select(Integer idadmin);
	
	public Admin find(Integer idadmin);

	public void add(Admin admin);

	public void delete(Admin admin);

	public void update(Admin admin);

	public void testTransaction(Admin admin1, Admin admin2);


}
