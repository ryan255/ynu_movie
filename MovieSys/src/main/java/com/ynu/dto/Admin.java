package com.ynu.dto;

public class Admin {
    private Integer idadmin;

    private Integer idstudio;

    private String adminName;

    private String adminPw;

    private String adminPhone;

    private String adminIdentity;

    public Integer getIdadmin() {
        return idadmin;
    }

    public void setIdadmin(Integer idadmin) {
        this.idadmin = idadmin;
    }

    public Integer getIdstudio() {
        return idstudio;
    }

    public void setIdstudio(Integer idstudio) {
        this.idstudio = idstudio;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName == null ? null : adminName.trim();
    }

    public String getAdminPw() {
        return adminPw;
    }

    public void setAdminPw(String adminPw) {
        this.adminPw = adminPw == null ? null : adminPw.trim();
    }

    public String getAdminPhone() {
        return adminPhone;
    }

    public void setAdminPhone(String adminPhone) {
        this.adminPhone = adminPhone == null ? null : adminPhone.trim();
    }

    public String getAdminIdentity() {
        return adminIdentity;
    }

    public void setAdminIdentity(String adminIdentity) {
        this.adminIdentity = adminIdentity == null ? null : adminIdentity.trim();
    }
}