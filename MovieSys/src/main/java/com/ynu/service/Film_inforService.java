package com.ynu.service;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.ynu.dto.Film_infor;
import com.ynu.dto.User;

public interface Film_inforService {
	public List<Film_infor> selectAllFilmOnline();
	public List<Film_infor> selectFilmComing();
	public Film_infor selectPlayByfilmName(String f_name);
	public Film_infor selectPlayBypriceId(Integer idPrice);
	public User selectUserOrder(Integer user_id);

	Film_infor selectFilm_inforById(Integer idFilm);
	PageInfo<Film_infor> queryByPage(Integer pageNo,Integer pageSize); 
}
