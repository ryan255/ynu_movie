package com.ynu.service;

import java.util.List;

import com.ynu.dto.Film_infor;

public interface Film_inforService {
	public List<Film_infor> selectAllFilmOnline();
	public List<Film_infor> selectFilmComing();
	public Film_infor selectPlayByfilmName(String f_name);

}
