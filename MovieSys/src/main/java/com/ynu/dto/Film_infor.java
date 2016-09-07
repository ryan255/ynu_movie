package com.ynu.dto;

public class Film_infor {
    private Integer idfilm;

    private String fName;

    private String fDirector;

    private String fStar;

    private Integer idclass;

    private String fCountry;

    private String fTime;

    private Integer fLevel;

    private Integer fClick;

    private String fComment;

    private String fIntroduce;

    private String fCoverS;

    private String fCoverB;

    public Integer getIdfilm() {
        return idfilm;
    }

    public void setIdfilm(Integer idfilm) {
        this.idfilm = idfilm;
    }

    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName == null ? null : fName.trim();
    }

    public String getfDirector() {
        return fDirector;
    }

    public void setfDirector(String fDirector) {
        this.fDirector = fDirector == null ? null : fDirector.trim();
    }

    public String getfStar() {
        return fStar;
    }

    public void setfStar(String fStar) {
        this.fStar = fStar == null ? null : fStar.trim();
    }

    public Integer getIdclass() {
        return idclass;
    }

    public void setIdclass(Integer idclass) {
        this.idclass = idclass;
    }

    public String getfCountry() {
        return fCountry;
    }

    public void setfCountry(String fCountry) {
        this.fCountry = fCountry == null ? null : fCountry.trim();
    }

    public String getfTime() {
        return fTime;
    }

    public void setfTime(String fTime) {
        this.fTime = fTime == null ? null : fTime.trim();
    }

    public Integer getfLevel() {
        return fLevel;
    }

    public void setfLevel(Integer fLevel) {
        this.fLevel = fLevel;
    }

    public Integer getfClick() {
        return fClick;
    }

    public void setfClick(Integer fClick) {
        this.fClick = fClick;
    }

    public String getfComment() {
        return fComment;
    }

    public void setfComment(String fComment) {
        this.fComment = fComment == null ? null : fComment.trim();
    }

    public String getfIntroduce() {
        return fIntroduce;
    }

    public void setfIntroduce(String fIntroduce) {
        this.fIntroduce = fIntroduce == null ? null : fIntroduce.trim();
    }

    public String getfCoverS() {
        return fCoverS;
    }

    public void setfCoverS(String fCoverS) {
        this.fCoverS = fCoverS == null ? null : fCoverS.trim();
    }

    public String getfCoverB() {
        return fCoverB;
    }

    public void setfCoverB(String fCoverB) {
        this.fCoverB = fCoverB == null ? null : fCoverB.trim();
    }
}