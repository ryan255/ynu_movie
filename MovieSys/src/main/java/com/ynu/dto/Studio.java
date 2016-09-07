package com.ynu.dto;

public class Studio {
    private Integer idstudio;

    private String studioName;

    private String studioOnline;

    private String studioAddress;

    private String studioPhone;

    private String studioText;

    public Integer getIdstudio() {
        return idstudio;
    }

    public void setIdstudio(Integer idstudio) {
        this.idstudio = idstudio;
    }

    public String getStudioName() {
        return studioName;
    }

    public void setStudioName(String studioName) {
        this.studioName = studioName == null ? null : studioName.trim();
    }

    public String getStudioOnline() {
        return studioOnline;
    }

    public void setStudioOnline(String studioOnline) {
        this.studioOnline = studioOnline == null ? null : studioOnline.trim();
    }

    public String getStudioAddress() {
        return studioAddress;
    }

    public void setStudioAddress(String studioAddress) {
        this.studioAddress = studioAddress == null ? null : studioAddress.trim();
    }

    public String getStudioPhone() {
        return studioPhone;
    }

    public void setStudioPhone(String studioPhone) {
        this.studioPhone = studioPhone == null ? null : studioPhone.trim();
    }

    public String getStudioText() {
        return studioText;
    }

    public void setStudioText(String studioText) {
        this.studioText = studioText == null ? null : studioText.trim();
    }
}