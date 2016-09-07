package com.ynu.dto;

public class Classification {
    private Integer idclass;

    private String className;

    public Integer getIdclass() {
        return idclass;
    }

    public void setIdclass(Integer idclass) {
        this.idclass = idclass;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className == null ? null : className.trim();
    }
}