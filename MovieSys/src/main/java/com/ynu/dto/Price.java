package com.ynu.dto;

public class Price {
    private Integer idprice;

    private Integer idplay1;

    private Integer idauditorium1;

    private Integer idedition1;

    private String priceScreens;

    private Long prices;

    public Integer getIdprice() {
        return idprice;
    }

    public void setIdprice(Integer idprice) {
        this.idprice = idprice;
    }

    public Integer getIdplay1() {
        return idplay1;
    }

    public void setIdplay1(Integer idplay1) {
        this.idplay1 = idplay1;
    }

    public Integer getIdauditorium1() {
        return idauditorium1;
    }

    public void setIdauditorium1(Integer idauditorium1) {
        this.idauditorium1 = idauditorium1;
    }

    public Integer getIdedition1() {
        return idedition1;
    }

    public void setIdedition1(Integer idedition1) {
        this.idedition1 = idedition1;
    }

    public String getPriceScreens() {
        return priceScreens;
    }

    public void setPriceScreens(String priceScreens) {
        this.priceScreens = priceScreens == null ? null : priceScreens.trim();
    }

    public Long getPrices() {
        return prices;
    }

    public void setPrices(Long prices) {
        this.prices = prices;
    }
}