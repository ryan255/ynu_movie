package com.ynu.dto;

import java.util.List;

public class Order {
    private Integer idOrder;

    private Integer idUser;

    private Integer idPrice;

    private Long true_price;

    private Integer order_number;

    private Long order_total;

    private Integer order_state;
    
    private List<Seat> seats;

	public List<Seat> getSeats() {
		return seats;
	}

	public void setSeats(List<Seat> seats) {
		this.seats = seats;
	}

	public Integer getIdOrder() {
		return idOrder;
	}

	public void setIdOrder(Integer idOrder) {
		this.idOrder = idOrder;
	}

	public Integer getIdUser() {
		return idUser;
	}

	public void setIdUser(Integer idUser) {
		this.idUser = idUser;
	}

	public Integer getIdPrice() {
		return idPrice;
	}

	public void setIdPrice(Integer idPrice) {
		this.idPrice = idPrice;
	}

	public Long getTrue_price() {
		return true_price;
	}

	public void setTrue_price(Long true_price) {
		this.true_price = true_price;
	}

	public Integer getOrder_number() {
		return order_number;
	}

	public void setOrder_number(Integer order_number) {
		this.order_number = order_number;
	}

	public Long getOrder_total() {
		return order_total;
	}

	public void setOrder_total(Long order_total) {
		this.order_total = order_total;
	}

	public Integer getOrder_state() {
		return order_state;
	}

	public void setOrder_state(Integer order_state) {
		this.order_state = order_state;
	}

}