package com.ynu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ynu.dto.City;
import com.ynu.mapper.CityMapper;
import com.ynu.service.CityService;

@Service
public class CityServiceImpl implements CityService{
	
	@Autowired
	private CityMapper cityMapper;

	public City findCity(String city_name) {
		return cityMapper.findCity(city_name);
	}

	public void insertCity(City city) {
		cityMapper.insertCity(city);
	}

	public void deleteCityByName(String city_name) {
		cityMapper.deleteCityByName(city_name);
	}

}
