package com.ynu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ImportResource;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ynu.dto.Film_infor;
import com.ynu.dto.User;
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
	public PageInfo<Film_infor> queryByPage(Integer pageNo, Integer pageSize) {
		pageNo = pageNo == null?1:pageNo;
		pageSize = pageSize == null?10:pageSize;
		PageHelper.startPage(pageNo, pageSize);
		List<Film_infor> list = film_inforMapper.selectFilmPage();
		//用PageInfo对结果进行包装
		PageInfo<Film_infor> page = new PageInfo<Film_infor>(list);
		//测试PageInfo全部属性
		System.out.println(page.getPageNum());
		System.out.println(page.getPageSize());
		System.out.println(page.getStartRow());
		System.out.println(page.getEndRow());
		System.out.println(page.getTotal());
		System.out.println(page.getPages());
		System.out.println(page.getFirstPage());
		System.out.println(page.getLastPage());
		System.out.println(page.isHasPreviousPage());
		System.out.println(page.isHasNextPage());
		return page;
	}
	public Film_infor selectFilm_inforById(Integer idFilm) {
		// TODO Auto-generated method stub
		return null;
	}
	public Film_infor selectPlayBypriceId(Integer idPrice) {
		// TODO Auto-generated method stub
		return film_inforMapper.selectPlayBypriceId(idPrice);
	}
	public User selectUserOrder(Integer user_id) {
		// TODO Auto-generated method stub
		return film_inforMapper.selectUserOrder(user_id);
	}
	public void insertFilm(Film_infor film_infor) {
		film_inforMapper.insertFilm(film_infor);
		
	}

	

}
