package com.ynu.dto;

import java.util.List;

public class Admin {
    private Integer idAdmin;

	private Integer idStudio;

    private String admin_name;

    private String admin_pw;

    private String admin_phone;

    private String admin_identity;
    
    private List<Auditorium> auditoriums;
    
    private List<Film_infor> film_infors;
    
    private List<Play> plays;
    
    private Studio studio;
    
    private List<Studio> studios;
    
    public List<Film_infor> getFilm_infors() {
		return film_infors;
	}

	public void setFilm_infors(List<Film_infor> film_infors) {
		this.film_infors = film_infors;
	}

	public List<Play> getPlays() {
		return plays;
	}

	public void setPlays(List<Play> plays) {
		this.plays = plays;
	}

	public List<Studio> getStudios() {
		return studios;
	}

	public void setStudios(List<Studio> studios) {
		this.studios = studios;
	}

	public List<Auditorium> getAuditoriums() {
		return auditoriums;
	}

	public void setAuditoriums(List<Auditorium> auditoriums) {
		this.auditoriums = auditoriums;
	}

	public Studio getStudio() {
		return studio;
	}

	public void setStudio(Studio studio) {
		this.studio = studio;
	}

	public Integer getIdAdmin() {
		return idAdmin;
	}

	public void setIdAdmin(Integer idAdmin) {
		this.idAdmin = idAdmin;
	}

	public Integer getIdStudio() {
		return idStudio;
	}

	public void setIdStudio(Integer idStudio) {
		this.idStudio = idStudio;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public String getAdmin_pw() {
		return admin_pw;
	}

	public void setAdmin_pw(String admin_pw) {
		this.admin_pw = admin_pw;
	}

	public String getAdmin_phone() {
		return admin_phone;
	}

	public void setAdmin_phone(String admin_phone) {
		this.admin_phone = admin_phone;
	}

	public String getAdmin_identity() {
		return admin_identity;
	}

	public void setAdmin_identity(String admin_identity) {
		this.admin_identity = admin_identity;
	}

}