package com.ynu.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ynu.dto.Film_infor;


@Repository("Film_inforMapper")
public interface Film_inforMapper {
	public List<Film_infor> selectAllFilmOnline();
	public List<Film_infor> selectFilmComing();
	public Film_infor selectPlayByfilmName(String f_name);
}
