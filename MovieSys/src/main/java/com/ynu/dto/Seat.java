package com.ynu.dto;

public class Seat {
	
    private Integer idSeat;

    private Integer seat_num;

    private Integer seat_state;

    private String seat_order;

    private Integer fk_seat_idAuditorium;

	public Integer getIdSeat() {
		return idSeat;
	}

	public void setIdSeat(Integer idSeat) {
		this.idSeat = idSeat;
	}

	public Integer getSeat_num() {
		return seat_num;
	}

	public void setSeat_num(Integer seat_num) {
		this.seat_num = seat_num;
	}

	public Integer getSeat_state() {
		return seat_state;
	}

	public void setSeat_state(Integer seat_state) {
		this.seat_state = seat_state;
	}

	public String getSeat_order() {
		return seat_order;
	}

	public void setSeat_order(String seat_order) {
		this.seat_order = seat_order;
	}

	public Integer getFk_seat_idAuditorium() {
		return fk_seat_idAuditorium;
	}

	public void setFk_seat_idAuditorium(Integer fk_seat_idAuditorium) {
		this.fk_seat_idAuditorium = fk_seat_idAuditorium;
	}

   
}