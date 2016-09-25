package com.ynu.dto;

public class Admin {
    private Integer idAdmin;

	private Integer idStudio;

    private String admin_name;

    private String admin_pw;

    private String admin_phone;

    private String admin_identity;
    
    public Integer getIdAdmin() {
		return idAdmin;
	}

	public void setIdAdmin(Integer idAdmin) {
		this.idAdmin = idAdmin;
	}

	public Integer getIdStudio() {
		return idStudio;
	}

	public void setIdStudio(Integer idStudio) {
		this.idStudio = idStudio;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public String getAdmin_pw() {
		return admin_pw;
	}

	public void setAdmin_pw(String admin_pw) {
		this.admin_pw = admin_pw;
	}

	public String getAdmin_phone() {
		return admin_phone;
	}

	public void setAdmin_phone(String admin_phone) {
		this.admin_phone = admin_phone;
	}

	public String getAdmin_identity() {
		return admin_identity;
	}

	public void setAdmin_identity(String admin_identity) {
		this.admin_identity = admin_identity;
	}

}