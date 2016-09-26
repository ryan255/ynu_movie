package com.ynu.dto;

import java.sql.Date;
import java.util.List;

public class Film_infor {
	private Integer idFilm;

	private String f_name;

	private String f_director;

	private String f_star;

	private Integer idClass;

	private String f_country;

	private Integer f_time;

	private Integer f_level;

	private Integer f_click;

	private String f_comment;

	private String f_introduce;

	private String f_cover_s;

	private String f_cover_b;

	private Integer f_online;

	private Date f_ontime;

	private List<Studio> studios;

	private String class_name;

	private List<Classification> classifications;

	private List<Auditorium> auditoriums;

	private List<Play> plays;

	private List<Price> prices;

	private List<Edition> editions;
	
	private List<Seat> seats;

	public List<Seat> getSeats() {
		return seats;
	}

	public void setSeats(List<Seat> seats) {
		this.seats = seats;
	}

	public String getClass_name() {
		return class_name;
	}

	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}

	public List<Classification> getClassifications() {
		return classifications;
	}

	public void setClassifications(List<Classification> classifications) {
		this.classifications = classifications;
	}

	public List<Auditorium> getAuditoriums() {
		return auditoriums;
	}

	public void setAuditoriums(List<Auditorium> auditoriums) {
		this.auditoriums = auditoriums;
	}

	public List<Play> getPlays() {
		return plays;
	}

	public void setPlays(List<Play> plays) {
		this.plays = plays;
	}

	public List<Price> getPrices() {
		return prices;
	}

	public void setPrices(List<Price> prices) {
		this.prices = prices;
	}

	public List<Edition> getEditions() {
		return editions;
	}

	public void setEditions(List<Edition> editions) {
		this.editions = editions;
	}

	public Date getF_ontime() {
		return f_ontime;
	}

	public void setF_ontime(Date f_ontime) {
		this.f_ontime = f_ontime;
	}

	public List<Studio> getStudios() {
		return studios;
	}

	public void setStudios(List<Studio> studios) {
		this.studios = studios;
	}

	public Integer getF_online() {
		return f_online;
	}

	public void setF_online(Integer f_online) {
		this.f_online = f_online;
	}

	public Integer getIdFilm() {
		return idFilm;
	}

	public void setIdFilm(Integer idFilm) {
		this.idFilm = idFilm;
	}

	public String getF_name() {
		return f_name;
	}

	public void setF_name(String f_name) {
		this.f_name = f_name;
	}

	public String getF_director() {
		return f_director;
	}

	public void setF_director(String f_director) {
		this.f_director = f_director;
	}

	public String getF_star() {
		return f_star;
	}

	public void setF_star(String f_star) {
		this.f_star = f_star;
	}

	public Integer getIdClass() {
		return idClass;
	}

	public void setIdClass(Integer idClass) {
		this.idClass = idClass;
	}

	public String getF_country() {
		return f_country;
	}

	public void setF_country(String f_country) {
		this.f_country = f_country;
	}

	public Integer getF_time() {
		return f_time;
	}

	public void setF_time(Integer f_time) {
		this.f_time = f_time;
	}

	public Integer getF_level() {
		return f_level;
	}

	public void setF_level(Integer f_level) {
		this.f_level = f_level;
	}

	public Integer getF_click() {
		return f_click;
	}

	public void setF_click(Integer f_click) {
		this.f_click = f_click;
	}

	public String getF_comment() {
		return f_comment;
	}

	public void setF_comment(String f_comment) {
		this.f_comment = f_comment;
	}

	public String getF_introduce() {
		return f_introduce;
	}

	public void setF_introduce(String f_introduce) {
		this.f_introduce = f_introduce;
	}

	public String getF_cover_s() {
		return f_cover_s;
	}

	public void setF_cover_s(String f_cover_s) {
		this.f_cover_s = f_cover_s;
	}

	public String getF_cover_b() {
		return f_cover_b;
	}

	public void setF_cover_b(String f_cover_b) {
		this.f_cover_b = f_cover_b;
	}

}