package com.ynu.dto;

import java.util.List;

public class User {
	private Integer idUser;

	private String user_name;

	private String user_pw;

	private String usersex;

	private String user_birth;

	private String user_phone;

	private String user_mail;

	private Integer user_point;

	private Integer idLevel;
	
	private long account;
	
	public long getAccount() {
		return account;
	}

	public void setAccount(long newAccount) {
		this.account = newAccount;
	}

	private List<Order> orders;
	
	private List<OrderSeat> orderSeats;
	
	private List<Seat> seats;
	
	public List<Seat> getSeats() {
		return seats;
	}

	public void setSeats(List<Seat> seats) {
		this.seats = seats;
	}

	public List<OrderSeat> getOrderSeats() {
		return orderSeats;
	}

	public void setOrderSeats(List<OrderSeat> orderSeats) {
		this.orderSeats = orderSeats;
	}

	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public Integer getIdUser() {
		return idUser;
	}

	public void setIdUser(Integer idUser) {
		this.idUser = idUser;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUsersex() {
		return usersex;
	}

	public void setUsersex(String usersex) {
		this.usersex = usersex;
	}

	public String getUser_birth() {
		return user_birth;
	}

	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getUser_mail() {
		return user_mail;
	}

	public void setUser_mail(String user_mail) {
		this.user_mail = user_mail;
	}

	public Integer getUser_point() {
		return user_point;
	}

	public void setUser_point(Integer user_point) {
		this.user_point = user_point;
	}

	public Integer getIdLevel() {
		return idLevel;
	}

	public void setIdLevel(Integer idLevel) {
		this.idLevel = idLevel;
	}

}