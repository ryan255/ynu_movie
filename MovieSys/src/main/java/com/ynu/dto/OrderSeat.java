package com.ynu.dto;

public class OrderSeat {
    private Integer idorderseat;

    private Integer fkOrderseatIdorder;

    private Integer fkOrderseatIdseat;

    public Integer getIdorderseat() {
        return idorderseat;
    }

    public void setIdorderseat(Integer idorderseat) {
        this.idorderseat = idorderseat;
    }

    public Integer getFkOrderseatIdorder() {
        return fkOrderseatIdorder;
    }

    public void setFkOrderseatIdorder(Integer fkOrderseatIdorder) {
        this.fkOrderseatIdorder = fkOrderseatIdorder;
    }

    public Integer getFkOrderseatIdseat() {
        return fkOrderseatIdseat;
    }

    public void setFkOrderseatIdseat(Integer fkOrderseatIdseat) {
        this.fkOrderseatIdseat = fkOrderseatIdseat;
    }
}