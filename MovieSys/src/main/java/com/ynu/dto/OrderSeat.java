package com.ynu.dto;

public class OrderSeat {
    private Integer idorderSeat;

    private Integer fk_orderSeat_idOrder;

    private Integer fk_orderSeat_idSeat;

	public Integer getIdorderSeat() {
		return idorderSeat;
	}

	public void setIdorderSeat(Integer idorderSeat) {
		this.idorderSeat = idorderSeat;
	}

	public Integer getFk_orderSeat_idOrder() {
		return fk_orderSeat_idOrder;
	}

	public void setFk_orderSeat_idOrder(Integer fk_orderSeat_idOrder) {
		this.fk_orderSeat_idOrder = fk_orderSeat_idOrder;
	}

	public Integer getFk_orderSeat_idSeat() {
		return fk_orderSeat_idSeat;
	}

	public void setFk_orderSeat_idSeat(Integer fk_orderSeat_idSeat) {
		this.fk_orderSeat_idSeat = fk_orderSeat_idSeat;
	}

   
}