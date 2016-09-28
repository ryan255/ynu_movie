package com.ynu.service;

import com.ynu.dto.Admin;

public interface AdminService {
	public Admin find(String admin_phone);
	public void insertAdmin(Admin admin);
	public void deleteAdminByName(String admin_name);
	public Admin selectAdminStudioById(Integer idAdmin);

}
