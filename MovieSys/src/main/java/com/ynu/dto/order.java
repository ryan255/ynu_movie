package com.ynu.dto;

public class Order {
    private Integer idorder;

    private Integer iduser;

    private Integer idprice;

    private Long truePrice;

    private Integer orderNumber;

    private Long orderTotal;

    private Integer orderState;

    public Integer getIdorder() {
        return idorder;
    }

    public void setIdorder(Integer idorder) {
        this.idorder = idorder;
    }

    public Integer getIduser() {
        return iduser;
    }

    public void setIduser(Integer iduser) {
        this.iduser = iduser;
    }

    public Integer getIdprice() {
        return idprice;
    }

    public void setIdprice(Integer idprice) {
        this.idprice = idprice;
    }

    public Long getTruePrice() {
        return truePrice;
    }

    public void setTruePrice(Long truePrice) {
        this.truePrice = truePrice;
    }

    public Integer getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(Integer orderNumber) {
        this.orderNumber = orderNumber;
    }

    public Long getOrderTotal() {
        return orderTotal;
    }

    public void setOrderTotal(Long orderTotal) {
        this.orderTotal = orderTotal;
    }

    public Integer getOrderState() {
        return orderState;
    }

    public void setOrderState(Integer orderState) {
        this.orderState = orderState;
    }
}