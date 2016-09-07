package com.ynu.dto;

public class Level {
    private Integer idlevel;

    private Integer levelPoint;

    private Float levelDiscount;

    public Integer getIdlevel() {
        return idlevel;
    }

    public void setIdlevel(Integer idlevel) {
        this.idlevel = idlevel;
    }

    public Integer getLevelPoint() {
        return levelPoint;
    }

    public void setLevelPoint(Integer levelPoint) {
        this.levelPoint = levelPoint;
    }

    public Float getLevelDiscount() {
        return levelDiscount;
    }

    public void setLevelDiscount(Float levelDiscount) {
        this.levelDiscount = levelDiscount;
    }
}