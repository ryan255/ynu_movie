package com.ynu.mapper;

import java.util.List;

import com.ynu.dto.Film_infor;

public interface Film_inforMapper {
	public List<Film_infor> selectAllFilmOnline();
	public List<Film_infor> selectFilmComing();
}
