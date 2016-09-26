package com.ynu.dto;

import java.util.Date;

public class Play {
	
	private Studio studio;
	
	private Integer idPlay;

    private Integer idStudio;

    private Integer idFilm;

    private String play_on;

    private Date play_ontime;

    private Date play_uptime;

	public Studio getStudio() {
		return studio;
	}

	public void setStudio(Studio studio) {
		this.studio = studio;
	}

	public Integer getIdPlay() {
		return idPlay;
	}

	public void setIdPlay(Integer idPlay) {
		this.idPlay = idPlay;
	}

	public Integer getIdStudio() {
		return idStudio;
	}

	public void setIdStudio(Integer idStudio) {
		this.idStudio = idStudio;
	}

	public Integer getIdFilm() {
		return idFilm;
	}

	public void setIdFilm(Integer idFilm) {
		this.idFilm = idFilm;
	}

	public String getPlay_on() {
		return play_on;
	}

	public void setPlay_on(String play_on) {
		this.play_on = play_on;
	}

	public Date getPlay_ontime() {
		return play_ontime;
	}

	public void setPlay_ontime(Date play_ontime) {
		this.play_ontime = play_ontime;
	}

	public Date getPlay_uptime() {
		return play_uptime;
	}

	public void setPlay_uptime(Date play_uptime) {
		this.play_uptime = play_uptime;
	}
    
   
}