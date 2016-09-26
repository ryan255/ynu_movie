package com.ynu.service;

import com.ynu.dto.City;

public interface CityService {
	public City findCity(String city_name);	
	public void insertCity(City city);
	public void deleteCityByName(String city_name);
}
