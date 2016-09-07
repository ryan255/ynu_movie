package com.ynu.dto;

public class Edition {
    private Integer idedition;

    private String editionName;

    public Integer getIdedition() {
        return idedition;
    }

    public void setIdedition(Integer idedition) {
        this.idedition = idedition;
    }

    public String getEditionName() {
        return editionName;
    }

    public void setEditionName(String editionName) {
        this.editionName = editionName == null ? null : editionName.trim();
    }
}