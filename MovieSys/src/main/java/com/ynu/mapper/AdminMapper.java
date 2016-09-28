package com.ynu.mapper;

import com.ynu.dto.Admin;

public interface AdminMapper {
	public Admin findAdmin(String admin_name);	
	public void insertAdmin(Admin admin);
	public void deleteAdminByName(String admin_name);
	public Admin selectAdminStudioById(Integer idAdmin);
}
