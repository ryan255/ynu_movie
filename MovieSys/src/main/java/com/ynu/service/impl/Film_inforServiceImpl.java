package com.ynu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ImportResource;
import org.springframework.stereotype.Service;

import com.ynu.dto.Film_infor;
import com.ynu.mapper.Film_inforMapper;
import com.ynu.service.Film_inforService;

@Service
public class Film_inforServiceImpl implements Film_inforService {

	@Autowired
	private Film_inforMapper film_inforMapper;

	public List<Film_infor> selectAllFilmOnline() {
		return film_inforMapper.selectAllFilmOnline();
	}
	public List<Film_infor> selectFilmComing() {
		return film_inforMapper.selectFilmComing();
	}
	public Film_infor selectPlayByfilmName(String f_name) {
		// TODO Auto-generated method stub
		return film_inforMapper.selectPlayByfilmName(f_name);
	}

	

}
