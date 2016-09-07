package com.ynu.dto;

import java.util.Date;

public class Play {
    private Integer idplay;

    private Integer idstudio;

    private Integer idfilm;

    private String playOn;

    private Date playOntime;

    private Date playUptime;

    public Integer getIdplay() {
        return idplay;
    }

    public void setIdplay(Integer idplay) {
        this.idplay = idplay;
    }

    public Integer getIdstudio() {
        return idstudio;
    }

    public void setIdstudio(Integer idstudio) {
        this.idstudio = idstudio;
    }

    public Integer getIdfilm() {
        return idfilm;
    }

    public void setIdfilm(Integer idfilm) {
        this.idfilm = idfilm;
    }

    public String getPlayOn() {
        return playOn;
    }

    public void setPlayOn(String playOn) {
        this.playOn = playOn == null ? null : playOn.trim();
    }

    public Date getPlayOntime() {
        return playOntime;
    }

    public void setPlayOntime(Date playOntime) {
        this.playOntime = playOntime;
    }

    public Date getPlayUptime() {
        return playUptime;
    }

    public void setPlayUptime(Date playUptime) {
        this.playUptime = playUptime;
    }
}