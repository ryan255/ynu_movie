package com.ynu.dto;

public class Seat {
    private Integer idseat;

    private Integer seatNum;

    private String seatState;

    private String seatOrder;

    private Integer fkSeatIdauditorium;

    public Integer getIdseat() {
        return idseat;
    }

    public void setIdseat(Integer idseat) {
        this.idseat = idseat;
    }

    public Integer getSeatNum() {
        return seatNum;
    }

    public void setSeatNum(Integer seatNum) {
        this.seatNum = seatNum;
    }

    public String getSeatState() {
        return seatState;
    }

    public void setSeatState(String seatState) {
        this.seatState = seatState == null ? null : seatState.trim();
    }

    public String getSeatOrder() {
        return seatOrder;
    }

    public void setSeatOrder(String seatOrder) {
        this.seatOrder = seatOrder == null ? null : seatOrder.trim();
    }

    public Integer getFkSeatIdauditorium() {
        return fkSeatIdauditorium;
    }

    public void setFkSeatIdauditorium(Integer fkSeatIdauditorium) {
        this.fkSeatIdauditorium = fkSeatIdauditorium;
    }
}