package com.ynu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ynu.dto.Film_infor;
import com.ynu.dto.User;


@Repository("Film_inforMapper")
public interface Film_inforMapper {
	public List<Film_infor> selectAllFilmOnline();
	public List<Film_infor> selectFilmComing();
	public Film_infor selectPlayByfilmName(String f_name);
	
	public List<Film_infor> selectFilmPage();

	public Film_infor selectFilm_inforById(Integer idFilm);
	public Film_infor selectPlayBypriceId(Integer idPrice);
	public User selectUserOrder(Integer user_id);
	
	public void insertFilm (Film_infor film_infor);
}
