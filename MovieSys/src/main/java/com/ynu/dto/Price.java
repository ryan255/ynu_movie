package com.ynu.dto;

import java.sql.Time;

public class Price {
	private Integer idPrice;

	private Integer idPlay1;

	private Integer idAuditorium1;

	private Integer idEdition1;

	private Time price_screens;

	private Long prices;


	public Integer getIdPrice() {
		return idPrice;
	}

	public void setIdPrice(Integer idPrice) {
		this.idPrice = idPrice;
	}

	public Integer getIdPlay1() {
		return idPlay1;
	}

	public void setIdPlay1(Integer idPlay1) {
		this.idPlay1 = idPlay1;
	}

	public Integer getIdAuditorium1() {
		return idAuditorium1;
	}

	public void setIdAuditorium1(Integer idAuditorium1) {
		this.idAuditorium1 = idAuditorium1;
	}

	public Integer getIdEdition1() {
		return idEdition1;
	}

	public void setIdEdition1(Integer idEdition1) {
		this.idEdition1 = idEdition1;
	}

	public Time getPrice_screens() {
		return price_screens;
	}

	public void setPrice_screens(Time price_screens) {
		this.price_screens = price_screens;
	}

	public Long getPrices() {
		return prices;
	}

	public void setPrices(Long prices) {
		this.prices = prices;
	}



}