package com.ynu.dto;

public class Auditorium {
	private Integer idAuditorium;

	private Integer idStudio;

	private String auditorium_num;

	private Integer auditorium_col;

	private Integer auditorium_row;

	private Studio studio;

	public Integer getIdAuditorium() {
		return idAuditorium;
	}

	public void setIdAuditorium(Integer idAuditorium) {
		this.idAuditorium = idAuditorium;
	}

	public Integer getIdStudio() {
		return idStudio;
	}

	public void setIdStudio(Integer idStudio) {
		this.idStudio = idStudio;
	}

	public String getAuditorium_num() {
		return auditorium_num;
	}

	public void setAuditorium_num(String auditorium_num) {
		this.auditorium_num = auditorium_num;
	}

	public Integer getAuditorium_col() {
		return auditorium_col;
	}

	public void setAuditorium_col(Integer auditorium_col) {
		this.auditorium_col = auditorium_col;
	}

	public Integer getAuditorium_row() {
		return auditorium_row;
	}

	public void setAuditorium_row(Integer auditorium_row) {
		this.auditorium_row = auditorium_row;
	}

	public Studio getStudio() {
		return studio;
	}

	public void setStudio(Studio studio) {
		this.studio = studio;
	}
	
	
}